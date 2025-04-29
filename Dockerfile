# FROM and WORKDIR are fine
FROM node:16
WORKDIR /usr/src/app

# Skip installing packages if none are needed
# COPY package*.json ./
# RUN npm install

COPY . .

EXPOSE 3000
CMD ["node", "index.js"]
