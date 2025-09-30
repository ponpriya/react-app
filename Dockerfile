#Stage 0 - Build the react app
FROM node:22.19.0 as build
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
RUN npm run build

#Stage 1 - Serve the react app with nginx server

FROM nginx:1.28.0
WORKDIR /etc/nginx
ADD nginx.conf /etc/nginx/nginx.conf
COPY --from=0 /app/dist /usr/share/nginx/html/
EXPOSE 5173
CMD ["nginx", "-g", "daemon off;"]