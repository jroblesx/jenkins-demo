# Usa la imagen oficial de Node.js como base
FROM node:14

# Establece el directorio de trabajo en /app
WORKDIR /app

# Copia el archivo package.json y package-lock.json a /app
COPY package*.json ./

# Instala las dependencias
RUN npm install

# Copia todos los archivos al directorio de trabajo
COPY . .

# Expone el puerto 3000
EXPOSE 3000

# Define el comando por defecto para ejecutar la aplicación
CMD ["node", "app.js"]
