FROM nginx:stable-alpine AS Server

COPY site /usr/share/nginx/html

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
