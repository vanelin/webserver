FROM ubuntu 
RUN apt-get update 
RUN apt-get install -y netcat
RUN apt-get clean
COPY start-web.sh /
RUN chmod a+x /start-web.sh
EXPOSE 8000
ENTRYPOINT ["/start-web.sh"]