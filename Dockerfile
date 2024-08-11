# Uitiliser une image de base officielle de NodeJs(version 20)
FROM node:20-alpine

# Definir le repertoire de travail dans le conteneur
WORKDIR /app

# Copier les fichiers package.json et package-lock.json
COPY package*.json ./

# Installer les dependencies
RUN npm install

# Copier toutes les codes source dans le conteneur
COPY . .

# Exposer le port sur lequel l'application va ecouter
EXPOSE 3000

# Lancer le code mode development
CMD [ "npm", "start" ]





