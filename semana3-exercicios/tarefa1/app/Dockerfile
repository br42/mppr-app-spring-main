FROM node:18
WORKDIR /app
COPY . .
## Necessário para executar em proxies HTTPS corporativos (p.ex. o do ad.mppr.mp.br)
RUN npm config set cafile ./ad-mppr-mp-br.cert.pem
## Alternativa perigosa ao comando acima (resolve, mas deixa brechas abertas...)
#RUN npm config -g set strict-ssl false
RUN npm install
ENV PORT=3000
CMD ["npm", "start"]

