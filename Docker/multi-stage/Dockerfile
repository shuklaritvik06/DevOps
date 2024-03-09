FROM node:alpine as build
RUN apk --no-cache add curl
WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .

RUN npm run build



FROM node:alpine as runner

COPY package*.json ./

RUN npm install --only=production

COPY --from=build /app/dist /app/prod

WORKDIR /app/prod

RUN npm install

ENV PORT=4000  

ENTRYPOINT [ "node", "script.js" ]
