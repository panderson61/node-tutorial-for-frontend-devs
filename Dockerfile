FROM node:latest
RUN mkdir -p /usr/src/app
RUN mkdir -p /usr/src/app/bin
RUN mkdir -p /usr/src/app/routes
RUN mkdir -p /usr/src/app/views
WORKDIR /usr/src/app
COPY src/package.json /usr/src/app/
#COPY src/package-lock.json /usr/src/app/
RUN npm install
COPY src/app.js /usr/src/app/
COPY bin/www /usr/src/app/bin/
COPY routes/* /usr/src/app/routes/
COPY views/* /usr/src/app/views/
EXPOSE 3000
ENTRYPOINT ["npm", "start"]
