from nginx:alpine

RUN apk add python3 py3-pip
RUN pip install flask
COPY web-server/index.html /usr/share/nginx/html/
COPY backend-server/app.py /app/
COPY default.conf /etc/nginx/conf.d/default.conf

WORKDIR /app/
CMD sh -c "flask run -p 8080 -h 0.0.0.0 & nginx -g 'daemon off;'"
