FROM nginx:latest

ADD default.conf /etc/nginx/sites-enable/default.conf

RUN git clone https://nosso-repo.git /usr/share/nginx/html


CMD 
