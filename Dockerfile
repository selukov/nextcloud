FROM nextcloud:23.0.0

RUN apt-get update && apt-get install -y ffmpeg

VOLUME /var/www/html

COPY *.sh upgrade.exclude /
COPY config/* /usr/src/nextcloud/config/

ENTRYPOINT ["/entrypoint.sh"]
CMD ["%%CMD%%"]
