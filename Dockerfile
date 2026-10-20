FROM nginx
LABEL MAINTAINER="Julathit Chetsawang"
ARG MY_NAME="Julathit Chetsawang"
ARG MY_ID="6622782280"
RUN apt-get update && apt-get install -y git sed
RUN mkdir /mycode && cd /mycode && git clone https://github.com/apichonsiit/testgit.git
RUN cp -r /mycode/testgit/src /usr/share/nginx/html/mygitweb
RUN export MY_NAME=$MY_NAME && sed -i 's/<MY_NAME>/'"${MY_NAME}"'/gi' /usr/share/nginx/html/mygitweb/index.html
RUN export MY_ID=$MY_ID && sed -i 's/<MY_ID>/'"${MY_ID}"'/gi' /usr/share/nginx/html/mygitweb/index.html