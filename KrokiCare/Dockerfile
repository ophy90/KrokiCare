# Utilise une image de base officielle Deno
FROM denoland/deno:latest

# Définir le répertoire de travail dans le conteneur
WORKDIR /app

# Copier le code de l'application dans le conteneur
COPY . .

# Installer les dépendances via Deno
RUN deno cache --unstable main.ts

# Expose le port de l'application Fresh (par défaut 8000)
EXPOSE 8000

# Exécuter l'application
CMD ["deno", "run", "--allow-net", "--allow-read", "--unstable", "main.ts"]
