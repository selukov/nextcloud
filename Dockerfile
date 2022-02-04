FROM nextcloud:23.0.0

RUN apt-get update && apt-get install -y ffmpeg

VOLUME /var/www/html
ENTRYPOINT ["/entrypoint.sh"]
