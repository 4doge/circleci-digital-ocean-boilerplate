FROM node:14.13.1-alpine3.10

RUN mkdir -p /ci-do-boilerplate

WORKDIR /ci-do-boilerplate

COPY . /ci-do-boilerplate

RUN npm i

RUN npm run build

EXPOSE 3000

CMD ["npm", "start"]
