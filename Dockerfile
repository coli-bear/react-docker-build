FROM nginx

RUN wget -O

RUN mkdir -p /app/build

WORKDIR /app

