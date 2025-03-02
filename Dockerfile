#docker build -t mi-backend .
#docker run -p 3000:3000 example-backend
#docker ps
#docker stop <container_id>
#docker rm <container_id>


# 1. Usar una imagen base de Node.js
FROM node:18

# 2. Establecer el directorio de trabajo dentro del contenedor
WORKDIR /app

# 3. Copiar los archivos del proyecto
COPY package*.json ./

# 4. Instalar las dependencias
RUN npm install

# 5. Copiar el resto de los archivos
COPY . .

# 6. Exponer el puerto en el que corre la aplicación
EXPOSE 3000

# 7. Comando para iniciar la aplicación
CMD ["node", "server.js"]
