# Projeto Linux 01 - Trilha DevSecOps/AWS COMPASS.UOL

## Descrição
## Criar um ambiente Linux no Windows:
- Utilizando o WSL do Windows, crie um subsistema do Ubuntu 20.04 ou superior

Atividade no Linux:
- Subir um servidor Nginx; estar online e rodando;
- Criar um script que valide se o serviço está online e envie o resultado da validação para um
diretório que você definir.
- O script deve conter - Data HORA + nome do serviço + Status + mensagem personalizada
de ONLINE ou OFFLINE;
- O script deve gerar 2 arquivos de saída: 1 para o serviço online e 1 para o serviço OFFLINE;
- Preparar a execução automatizada do script cada 5 minutos.
- Fazer o versionamento da atividade;
- Fazer a documentação explicando o processo de instalação do Linux.

## Instruções
Pré requisitos:
- Windows
- Wsl
- Ubuntu LTS 20.04 ou superior

## Etapas

### 1. Instalar o WSL e configurar o ambiente
- Para instalar o WSL utilize o comando:
```
wsl --install
```
- Por padrão sera instalado a distribuição Ubuntu
  
### 2. Instalar o Nginx
- Para instalar o Nginx use o comando:
```
sudo apt install nginx
```
- Para verificar se o nginx está rodando utilize o comando:
```
sudo systemctl status nginx
```

![Captura de tela 2025-01-16 090214](https://github.com/user-attachments/assets/2a1b7485-b735-47dc-990e-0587d52499ab)


Após isso, faça outra verificação digitando no seu navegador o seguinte endereço http://localhost/

![Captura de tela 2025-01-16 093413](https://github.com/user-attachments/assets/8c9abf42-eec5-41d4-9429-73e032ecb3bb)

### 3. Criação do script
- Agora crie o diretório que será feito o projeto com o comando:
```
mkdir projeto_linux01
```
- Entre no diretório com o comando:
```
cd projeto_linux01
```
- Agora dentro do diretório crie os logs onde serão armazenados as informações de saída com os comandos:
```
touch servidor_online.log
```
```
touch servidor_offline.log
```
- Para criar o script utilize o comando:
```
nano status_nginx
```
- Agora escreva nele o seguinte comando:

![Captura de tela 2025-01-19 220919](https://github.com/user-attachments/assets/e8978abc-f41d-43e4-9c32-f7b9e061bc28)

- Para salvar o arquivo aperte "CTRL + X", "Y" e "Enter".

- Torne o script executável com o comando:
```
chmod u+x status_nginx.sh
```
- Se o Nginx estiver online aparecerão as seguintes mensagens:

![nginx online](https://github.com/user-attachments/assets/dccc71b7-7bad-4147-ab8f-f75986c22b43)

- Se estiver offline aparecerá:

![nginx off](https://github.com/user-attachments/assets/405f0bc6-0405-4ecc-b937-27ad7db5f990)

### 4. Automatizar tarefa
- Para programar o script para ser executado a cada 5 minutos use o comando:
```
crontab -e
```
- Agora dentro do crontab digite o seguinte comando:
```
*/5 * * * * /home/seu_nome_de_usuario/projeto_linux01/status_nginx.sh
```

![Captura de tela 2025-01-19 224647](https://github.com/user-attachments/assets/19f91963-b177-4846-a28f-eb12063679b8)
