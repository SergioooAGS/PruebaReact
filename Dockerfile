# Usa la imagen oficial de Node como base
FROM node:14-alpine as deps

# Establece el directorio de trabajo en /app
WORKDIR /app

# Instala git para clonar el repositorio
RUN apk --no-cache add git

# Clona el repositorio desde GitHub
RUN git clone https://github.com/SergioooAGS/PruebaReact.git .

# Instala las dependencias
RUN npm install

# Construye la aplicación
RUN npm run build

# Expone el puerto en el que se ejecutará la aplicación (ajusta según tu aplicación)
EXPOSE 3000

# Comando para ejecutar la aplicación (ajusta según tu aplicación)
CMD ["npm", "start"]
