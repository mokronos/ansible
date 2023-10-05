FROM ubuntu:latest AS base
ARG TAGS
ARG user=mokronos
WORKDIR /usr/local/bin
ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y software-properties-common curl git build-essential sudo && \
    apt-add-repository -y ppa:ansible/ansible && \
    apt-get update && \
    apt-get install -y ansible && \
    apt-get clean && \
    apt-get autoremove -y

FROM base AS create_user
RUN adduser $user
RUN adduser $user sudo
RUN echo "$user:$user" | chpasswd
USER $user
WORKDIR /home/$user/ansible

# FROM create_user
# COPY . .
# CMD ["sh", "-c", "ansible-playbook $TAGS local.yml && /bin/bash"]
