import psutil
import pandas as pd
import datetime
import threading 
import os

lista_captura = []

def montar_msg(dado, nomeDado, metrica, limite_barra, numDivisao):
    calculo_total_barras = int(limite_barra * (dado / numDivisao))
    return f"{nomeDado} [{'■' * calculo_total_barras}{' ' * (limite_barra - calculo_total_barras)}] {dado}{metrica}"

def metricas():
    conversor_gigabyte = 1024**3
    ram = psutil.virtual_memory()
    sensor = psutil.sensors_temperatures()
    swap = psutil.swap_memory()
    time_now = datetime.datetime.now()
    hour = time_now.strftime("%d/%m/%y %H:%M:%S")

    # RAM
    ram_total = round(float(ram.total)/conversor_gigabyte,2)
    ram_livre = round(float((ram.free)/conversor_gigabyte),2)
    ram_usando = round(float((ram.used)/conversor_gigabyte),2)

    # SWAP
    memoria_swap_total = round(swap.total/conversor_gigabyte, 2)
    memoria_swap_usando = round(swap.used/conversor_gigabyte, 2)
    memoria_swap_livre = round(swap.free/conversor_gigabyte, 2)

    # CPU
    cpu_core = psutil.cpu_count(logical=False)
    cpu_core_logical = psutil.cpu_count()
    cpu_porcentagem_all = psutil.cpu_percent(interval= 0.1)
    cpu_hotspot = sensor['coretemp'][0].critical if 'coretemp' in sensor else None
    cpu_temperature_atual = sensor["coretemp"][0].current if 'coretemp' in sensor else None

    # DISCO
    disc = psutil.disk_usage("/")
    disc_total = round(disc.total/conversor_gigabyte, 2)
    disc_usando = round(disc.used/conversor_gigabyte, 2)
    disc_livre = round(disc.free/conversor_gigabyte, 2)
    disc_porcentagem_usando = disc.percent
    disc_temp_atual = sensor["nvme"][0].current if 'nvme' in sensor else None
    disc_hotspot = sensor['nvme'][0].critical if 'nvme' in sensor else None

    captura = {
        "CPU":{
            "Uso": cpu_porcentagem_all, 
            "Temperatura": cpu_temperature_atual,
            "Hotspot": cpu_hotspot},
        "RAM": {
           "Total": ram_total,
           "Uso": ram_usando,
           "livre": ram_livre},
        "SWAP":{
           "Total": memoria_swap_total,
           "Uso": memoria_swap_usando,
           "livre": memoria_swap_livre},
        "Disco":{
           "Total": disc_total,
           "Uso": disc_usando,
           "Livre": disc_livre,
           "Porcentagem de Uso": disc_porcentagem_usando,
           "Temperature": disc_temp_atual,
           "Hotspot": disc_hotspot},
        "Data": hour
    }

    lista_captura.append(captura)
    salvar_csv(captura)

    print(f"""
+---------------------------------------------------+

CPU:
  Cores: {cpu_core}
  Virtual Core: {cpu_core_logical}
  {montar_msg(cpu_porcentagem_all, 'Consumo da CPU', '%', 20, 100)}
  Temperature: {cpu_temperature_atual} °C
  CPU Hotspot: {cpu_hotspot} °C

RAM:
  Total: {ram_total} GiB
  {montar_msg(ram_usando, 'Consumo da RAM', ' GiB', 20, ram_total)}
  Livre: {ram_livre} GiB

SWAP:
  Total: {memoria_swap_total} GiB
  {montar_msg(memoria_swap_usando, 'Uso da SWAP', ' GiB', 20, memoria_swap_total)}
  Livre: {memoria_swap_livre} GiB

DISCO:
  Total: {disc_total} GiB
  {montar_msg(disc_usando, 'Consumo do Disco', ' GiB', 20, disc_total)}
  Livre: {disc_livre} GiB
  {montar_msg(disc_porcentagem_usando, 'Porcentagem de Uso', '%', 20, 100)}
  Temperature: {disc_temp_atual} °C
  Hotspot: {disc_hotspot} °C

Data da Captura: {hour}
""")

def salvar_csv(captura):
    df = pd.json_normalize([captura])  # transforma o dict em 1 linha
    df.to_csv(
        "captura.csv",
        mode="a",  # append
        header=not os.path.exists("captura.csv"),  # só escreve cabeçalho 1x
        encoding="utf-8")

def iniciar_metricas():
    metricas()
    threading.Timer(3, iniciar_metricas).start()

iniciar_metricas()
