FROM nginx

RUN mkdir -p /app/build

WORKDIR /app

ADD ./build ./build

RUN rm /etc/nginx/conf.d/default.conf

COPY ./nginx.conf /etc/nginx/conf.d

COPY ../../../.keystore/* ./.keystore

EXPOSE 443

CMD ["nginx", "-g", "daemon off;"]

