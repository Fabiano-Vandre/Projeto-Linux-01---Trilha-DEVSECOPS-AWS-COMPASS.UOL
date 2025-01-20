#!/bin/bash
# Serviço utilizado
servico="Nginx"

# Diretório do projeto
log_dir="/home/fabiano/projeto_linux01"

# Variável para verificar a data e a hora local
data_hora=$(date '+%c')

# Log para caso o serviço esteja online
log_online="$log_dir/servidor_online.log"

# Log para caso o serviço esteja offline
log_offline="$log_dir/servidor_offline.log"

# Variável para verificar se o nginx está ativo
status=$(systemctl is-active nginx)

# Condições
if [ "$status" == "active" ]; then
	estado="Online"
	mensagem="O serviço $servico está Online."
	log="Data: $data_hora | Serviço: $servico | Status: $estado | $mensagem"
	echo "$log" > "$log_online"
	echo "$servico Online"
	cat servidor_online.log
else
	estado="Offline"
	mensagem="O servico $servico está Offline."
	log="Data: $data_hora | Serviço: $servico | Status: $estado | $mensagem"
	echo "$log" > "$log_offline"
	echo "$servico Offline"
	cat servidor_offline.log
fi

