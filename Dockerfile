#FROM  hypriot/rpi-node
FROM resin/raspberrypi3-node:7.2.1
RUN apt-get update
RUN  apt-get clean

# Set our working directory
WORKDIR /usr/src/app

# Copy requirements.txt first for better cache on later pushes
COPY ./simple_server simple_server
WORKDIR /usr/src/app/simple_server
EXPOSE 8001
RUN npm install
CMD ["node", "index.js"]
