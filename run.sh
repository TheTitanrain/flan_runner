cd /home/titanrain/
sudo rm -rf flan
sudo git clone https://github.com/cloudflare/flan
cd flan/
sudo chmod 777 shared/ips.txt
sudo echo 212.19.20.180 > shared/ips.txt
sudo make build
current_time=$(date "+%Y.%m.%d-%H.%M")
sudo make start
sudo proxychains4 curl -F chat_id=115263918 -F document=@shared/reports/report_$current_time.tex https://api.telegram.org/bot913046036:AAGOjWdKibTzxwzjLQ_1huoYFF_1MTBWUJA/sendDocument
