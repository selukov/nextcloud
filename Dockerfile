FROM nextcloud:29.0.4

RUN apt-get update && apt-get install -y ffmpeg imagemagick ghostscript

VOLUME /var/www/html

ENTRYPOINT ["/entrypoint.sh"]
CMD ["apache2-foreground"]
