FROM node:19
WORKDIR /app
COPY package*.json ./
COPY wait-for-it.sh /app/wait-for-it.sh
COPY ./ad-mppr-mp-br.cert.pem /etc/ssl/certs/
RUN npm config -g set cafile /etc/ssl/certs/ad-mppr-mp-br.cert.pem
RUN npm install --save
COPY . .
EXPOSE 3000
CMD ["npm", "start"]

