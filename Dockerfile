FROM centos

LABEL maintainer=fdock

ENV TZ=Europe/Berlin
ENV LANG=de_DE.UTF-8
ENV LC_ALL=de_DE.UTF-8
ENV LC_MESSAGES=C

#################
# System
#################
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone && \
    dnf update && \
    dnf install -y langpacks-de && \
    dnf clean all


