FROM node:18

WORKDIR /app

COPY package*.json ./
RUN npm install

COPY . .

# Build Angular
RUN npm run build

# Instala o serve
RUN npm install -g serve

EXPOSE 4200

# browser
CMD ["serve", "-s", "dist/agenda-app/browser", "-l", "4200"]
