# This docker image was updated recently...
FROM --platform=linux/amd64 node@sha256:045b1a1c90bdfd8fcaad0769922aa16c401e31867d8bf5833365b0874884bbae
ENV NODE_ENV=production

WORKDIR /app

COPY ["package.json", "package-lock.json*", "./"]

RUN npm install --production

COPY . .

CMD [ "node", "server.js" ]
