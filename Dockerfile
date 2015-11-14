# vim:set ft=dockerfile:
FROM nginx:1.9.6

RUN rm /etc/nginx/conf.d/*
COPY nginx.conf /etc/nginx/nginx.conf
COPY proxy.conf /etc/nginx/conf.d/default.conf
COPY run.sh run.sh
RUN chmod +x run.sh

EXPOSE 80

CMD ["./run.sh"]
