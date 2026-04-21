FROM registry.access.redhat.com/ubi9/nodejs-18

WORKDIR /opt/app-root/src

COPY package*.json ./
RUN npm install --only=production

COPY . .

EXPOSE 3000
CMD ["node", "app.js"]