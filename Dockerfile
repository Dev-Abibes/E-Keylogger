# Utiliser l'image Python officielle de Docker Hub
FROM python:3.9-slim

# Définir le répertoire de travail dans le conteneur
WORKDIR /app

# Copier les fichiers requis dans le conteneur
COPY . /app

# Installer les dépendances nécessaires
RUN pip install --no-cache-dir pynput

# Commande par défaut à exécuter lorsque le conteneur démarre
CMD ["python", "script.py"]
