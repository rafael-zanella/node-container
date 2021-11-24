## Comando obrigatório
## Baixa a imagem do node com versão alpine (versão mais simplificada e leve)
FROM node:alpine

RUN apk add --no-cache bash

## Define o local onde o app vai ficar no disco do container
## Pode ser o diretório que você quiser
WORKDIR /usr/src/app

## Copia tudo que começa com package e termina com .json para dentro da pasta /usr/app
COPY package*.json /usr/src/app

## Executa npm install para adicionar as dependências e criar a pasta node_modules
RUN npm install

EXPOSE 3000

ENTRYPOINT ["npm", "run"]