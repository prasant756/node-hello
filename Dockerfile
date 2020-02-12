ROM node:8
WORKDIR /usr/src/app
COPY . .
RUN apt-get update
RUN apt-get install redis-server -y
EXPOSE 7301
CMD service redis-server start && NODE_ENV=production node build/app.js
