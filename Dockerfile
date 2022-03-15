# syntax=docker/dockerfile:1
FROM node:12 AS build
WORKDIR /app
COPY package* yarn.lock ./
RUN npm install
COPY public ./public
COPY config ./config
COPY scripts ./scripts
COPY src ./src
RUN npm build .

FROM nginx:alpine
COPY --from=build /app/build /usr/share/nginx/html