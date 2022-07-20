FROM node:16

# RUN npm install yarn

# instala um servidor http simples para servir conteúdo estático
# RUN npm install -g http-server

# faz da pasta 'app' o diretório atual de trabalho
WORKDIR /app

# copia os arquivos 'package.json' e 'package-lock.json' (se disponível)
COPY package*.json ./

RUN yarn global add @vue/cli
# instala dependências do projeto
RUN yarn install

# copia arquivos e pastas para o diretório atual de trabalho (pasta 'app')
COPY . .

# compila a aplicação de produção com minificação

EXPOSE 8080
# CMD [ "http-server", "dist" ]
# CMD yarn run serve