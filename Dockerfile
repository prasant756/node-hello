FROM node:8
WORKDIR .
COPY . .
RUN apt-get update
EXPOSE 3000
CMD node index.js
