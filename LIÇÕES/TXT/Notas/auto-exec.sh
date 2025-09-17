#!/bin/bash

data="$(date +"%d/%m/%Y %H:%M:%S")"

cd /home/kanjaxay/Documents/GitClass/

git add .
git commit -m "Atualização repositorio $data"
git push

sudo nano /etc/cron.daily/auto_commit_git

#!/bin/bash
cd /home/kanjaxay/Documents/GitClass/ || exit
data="$(date +"%d/%m/%Y %H:%M:%S")"
git add .
git commit -m "Atualização repositorio $data"
git push

sudo chmod +x /etc/cron.daily/auto_commit_git
