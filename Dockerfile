# imagem ofical do node como base
FROM node:16

#Diretório de trabalho
WORKDIR /usr

# copiar os arquivos package
COPY package*.json ./

# intalar as dependências do projeto
RUN npm install

# copiar demais arquivos do projeto
COPY . .

# Expor uma porta do conteiner
EXPOSE 5678

# Comando para inicializar a aplicação
CMD ["node","./src/server.js"]