Para executar o projeto: 

git clone https://github.com/Emanoeljunior/curriculo.git 
ou faça download e extraia os arquivos do .zip

A versão de desenvolvimento é possível rodar tanto pelo docker como pelo node.
Docker:
    Instale o docker e o docker compose

    https://docs.docker.com/engine/install/
    https://docs.docker.com/compose/install/

    na pasta raiz do projeto execute:
    docker-compose build
    docker-compose up

    A aplicação estará rodando na porta 8080

Node:
    instalar o nodejs 16
    https://nodejs.org/en/download/

    na pasta raiz do projeto execute:

    npm install -g @ionic/cli
    
    npm install
    npm run serve