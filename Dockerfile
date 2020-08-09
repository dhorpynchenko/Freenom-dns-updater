FROM python:3-alpine
MAINTAINER maxisoft
LABEL Description="This image is used to start freenom dns updater" Version="1.0"

# Placeholder for armhf
COPY ./ /tmp/freenom
RUN cd /tmp/freenom && python3 setup.py install

CMD fdu process -c -t ${UPDATE_INTERVAL} /etc/freenom.yml
