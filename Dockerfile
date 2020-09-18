FROM node:12

# gcloud builds submit --tag gcr.io/world-278908/world

# install simple http server for serving static content
RUN npm install -g http-server

# copy project files and folders to the current working directory
COPY . .

EXPOSE 8080

CMD [ "http-server" ]