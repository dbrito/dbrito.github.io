FROM node:alpine
# criando a pasta onde o os comandos serão executados
RUN mkdir -p /usr/src/teste

# especificando que os comandos serão executados na pasta teste
WORKDIR /usr/src/teste

# copiando os arquivos locais para a pasta da imagem
COPY package.json /usr/src/teste
COPY teste.js /usr/src/teste
RUN npm install

EXPOSE 8080

CMD ["npm", "start"]
