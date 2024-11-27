#Un Dockerfile es un archivo de texto que contiene un conjunto de instrucciones para decirle a Docker cómo construir una imagen.

# 1. Especificamos la imagen base
FROM python:3.9-slim

# 2. Configuramos el directorio de trabajo dentro del contenedor
WORKDIR /app
# 3. Copiamos el archivo de la aplicación al contenedor
COPY app.py .
# 4. Instalamos las dependencias necesarias
RUN pip install flask
# 5. Definimos el comando que se ejecutará al iniciar el contenedor
CMD ["python", "app.py"]
