# Utilisez une image de base Python
FROM python:3.9

WORKDIR /app

# Install system dependencies
RUN apt-get update && apt-get install -y python3-tk



RUN apt-get update && apt-get install -y \
    x11-apps \
    x11-utils \
    x11-xserver-utils \
    tk

RUN apt-get install -y xvfb 

ENV DISPLAY=:0

# Copy requirements.txt to the working directory
COPY requirements.txt .



# Copy the app directory into the container
COPY . .
# Définissez la commande par défaut pour exécuter votre script protégé
CMD ["python", "test.py"]
