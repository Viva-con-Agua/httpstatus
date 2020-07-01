FROM node as build-stage

# make the 'app' folder the current working directory
WORKDIR /app

# copy project files and folders to the current working directory (i.e. 'app' folder)
COPY . .

# install project dependencies
RUN npm install


# build app for production with minification
RUN npm run build

#EXPOSE 8080

FROM nginx as production-stage
COPY --from=build-stage /app/dist /usr/share/nginx/html/app/
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
#CMD [ "http-server", "dist" ]
