FROM node
ENV KEY=VALUE\
    KEY2=VALUE2
RUN mkdir -p hello/parent
WORKDIR /hello/parent
COPY . .
RUN npm install
EXPOSE 3000
CMD ["npm", "start"]
