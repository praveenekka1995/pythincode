FROM python:3.8-slim-buster 
RUN pip install flask
WORKDIR /root/pythoncode
RUN mkdir templates
COPY app.py .
COPY templates/login.html templates/
COPY templates/result.html templates/
EXPOSE 5000
ENV FLASK_APP=app.py
CMD ["flask","run","--host=0.0.0.0"]
