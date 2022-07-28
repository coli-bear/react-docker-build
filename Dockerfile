FROM nginx

RUN mkdir -p /app/build /app/certification

WORKDIR /app

ADD ./build ./build
ADD ./certification ./certification

RUN rm /etc/nginx/conf.d/default.conf

COPY ./nginx.conf /etc/nginx/conf.d

EXPOSE 443

CMD ["nginx", "-g", "daemon off;"]

