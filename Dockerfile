from python:3.9-alpine3.13
LABEL maintainer="londondeveloper.com"

# we dont want to buffer the output. we want see the output in the console
ENV PYTHONUNBUFFERED 1

# copy your requirements to text file on local temp/requirements.txt
COPY ./requirements.txt /temp/requirements.txt
# copy the directory of djangp app
COPY ./app /app
# running directory when the command starting run from docker
WORKDIR /app
# expose port 8000 from my docker to my local
EXPOSE 8000
