FROM node:16.13.1-alpine AS build

WORKDIR /tmp/build

COPY . .

RUN npm i -g npm; npm i; npm run build

FROM nginx AS final

WORKDIR /usr/share/nginx/html

COPY --from=build /tmp/build/build .

COPY startup.sh /startup.sh
RUN chmod +x /startup.sh

RUN apt-get update  -y \
    && apt-get upgrade -y \ 
    && apt-get install -y \
    ssh \
    sshpass \
    sudo \
    software-properties-common

RUN useradd -rm -d /home/ansible_controller -s /bin/bash -g root -G sudo -u 1001 ansible_controller
RUN echo ansible_controller:12345 | chpasswd
RUN echo "ansible_controller ALL=(ALL:ALL) NOPASSWD: ALL" |  EDITOR="tee -a"  visudo

RUN mkdir -p /home/ansible_controller/.ssh

EXPOSE 3000 2222

CMD ["/bin/bash", "/startup.sh"]