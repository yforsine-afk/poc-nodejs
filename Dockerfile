FROM registry.access.redhat.com/ubi9/nodejs-18

# กำหนด working directory มาตรฐานของ UBI
WORKDIR /opt/app-root/src

# copy package.json จาก folder nodejs-app
COPY nodejs-app/package*.json ./

# install production dependencies
RUN npm install --omit=dev

# copy source code ที่เหลือ
COPY nodejs-app/ .

EXPOSE 3000

CMD ["node", "app.js"]
