import psutil
import pandas as pd
import datetime

lista = []

for proc in psutil.process_iter(['pid', 'name', 'status', 'username', 'create_time']):
        
        pid = proc.info['pid']
        name = proc.info['name']
        status = proc.info['status']
        user = proc.info['username']
        started_timestamp = proc.info['create_time']
        started = datetime.datetime.fromtimestamp(started_timestamp).strftime("%Y-%m-%d %H:%M:%S")

        processo = {
            "Pid": pid,
            "Name": name,
            "Status": status,
            "User": user,
            "Started": started
        }

        lista.append(processo)

# Exporta para CSV
pd.DataFrame(lista).to_csv("dados.csv", encoding="utf-8", index=False)
