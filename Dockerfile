FROM node:24.22.2-bookworm-slim
COPY graphserver.js .
COPY package.json .
COPY UScities.json .
RUN apt-get update && \
    apt-get upgrade -y --no-install-recommends && \
    rm -rf /var/lib/apt/lists/* && \
    npm install
EXPOSE  4000
CMD node graphserver.js
