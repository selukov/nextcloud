FROM nextcloud:23.0.0

RUN apt-get update && apt-get install -y ffmpeg
