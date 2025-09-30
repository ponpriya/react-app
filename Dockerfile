#Stage 0 - Build the react app
FROM node:22.19.0 AS build
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .


#FROM nginx:alpine
#WORKDIR /app
#COPY --from=build /app/dist /usr/share/nginx/html
EXPOSE 3000
CMD ["npm", "start"]
