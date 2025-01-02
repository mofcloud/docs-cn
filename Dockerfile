FROM nginx:stable-alpine AS Server

COPY site /usr/share/nginx/html/docs

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
