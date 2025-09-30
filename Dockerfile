#Stage 0 - Build the react app
FROM node:22.19.0 AS build
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
RUN npm run build

FROM node:22.19.0 

RUN npm install -g serve
WORKDIR /app
COPY --from=buid /app/build ./build
EXPOSE 8080
CMD ["serve", "-s", "build", "-l", "8080"]
