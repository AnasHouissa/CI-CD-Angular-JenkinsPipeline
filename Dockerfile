FROM node:latest as build


WORKDIR /usr/local/app

COPY ./ /usr/local/app/

RUN npm install

RUN npm run build

FROM nginx:latest

COPY --from=build /usr/local/app/dist/summer-workshop-angular /usr/share/nginx/html

EXPOSE 8000

CMD ["nginx", "-g", "daemon off;"]
