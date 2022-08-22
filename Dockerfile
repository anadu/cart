FROM      nodejs
RUN       useradd roboshop
RUN       mkdir /app
RUN       chown roboshop /app
WORKDIR   /app

ADD       server.js /app
ADD       node_modules /app
