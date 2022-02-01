FROM node:17.4.0-bullseye

ARG PORT=8080

ENV PORT=${PORT}

WORKDIR /app

ADD . .
RUN npm install
EXPOSE ${PORT}/tcp
CMD ["npm", "start"]
