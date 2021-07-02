FROM node:14.16

WORKDIR /app

COPY package*.json ./
RUN npm install

COPY . .

EXPOSE 5000
CMD ["bash", "-c","npm install & npm run docker:start"]