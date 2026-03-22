import psutil
import pandas as pd
import datetime

process = psutil.pids()

lista =[]

for x in psutil.pids():
    pid = psutil.Process(x).pid
    name = psutil.Process(x).name()
    status = psutil.Process(x).status()
    user_l = psutil.process_iter(['pid', 'name', 'username'])
    print (user_l)

    started_timestamp = psutil.Process(pid).create_time()
    started = datetime.datetime.fromtimestamp(started_timestamp).strftime("%Y-%m-%d %H:%M:%S")

    
    process = {
        "Pid": pid,
        "name": name,
        "status":status,
        "started":started
    }
    
    lista.append(process)


    

pd.DataFrame(lista).to_csv("dados.csv",
                        encoding="utf-8",
                        index=False)