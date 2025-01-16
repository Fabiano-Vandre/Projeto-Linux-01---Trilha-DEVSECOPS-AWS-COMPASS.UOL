#!/bin/bash
#
servico="nginx"

log_dir="/home/fabiano/projeto_linux01"

#
data_hora=$(date '+%c')

#
log_online="$log_dir/servidor_online.log"

#
log_offline="$log_dir/servidor_offline.log"

status=$(systemctl is-active nginx)

if [ "$status" == "active" ]; then
	estado="Online"
	mensagem="O serviço $servico está Online."
	log="Data: $data_hora | Serviço: $servico | Status: $estado | $mensagem"
	echo "$log" > "$log_online"
	echo "$servico Online"

else
	estado="Offline"
	mensagem="O servico $servico está Offline."
	log="Data: $data_hora | Serviço: $servico | Status: $estado | $mensagem"
	echo "$log" > "$log_offline"
	echo "$servico Offline"
fi

