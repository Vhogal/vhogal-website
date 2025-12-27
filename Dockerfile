FROM node:20-alpine
WORKDIR /app
COPY package*.json ./
RUN npm ci
COPY . .
RUN npm run build
EXPOSE 8089
CMD ["npm", "run", "astro", "preview", "--port", "8089", "--host", "0.0.0.0"]
