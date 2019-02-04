FROM node:carbon /*base image for node */
WORKDIR /usr/src/app /*Default Work directory*/
COPY package*.json ./ /*Copy the node package */
RUN npm install /**/
COPY .. /*Copy the your application code to image*/
Expose 8080 /*expose the port for the application*/
CMD ["npm","start"]  /*command to start the server to run the application*
