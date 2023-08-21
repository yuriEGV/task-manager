# Usa una imagen base con Node.js
FROM node:14

# Establece el directorio de trabajo en /app
WORKDIR /app

# Copia los archivos de tu aplicación al directorio de trabajo
COPY package*.json ./
COPY src ./src

# Instala las dependencias de la aplicación
RUN npm install

# Expone el puerto 3000 (o el puerto que tu aplicación utiliza)
EXPOSE 3000

# Comando para iniciar la aplicación
CMD ["npm", "start"]
