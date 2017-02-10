FROM resin/raspberrypi3-debian

RUN apt-get update && apt-get install -y curl wget build-essential
COPY . /usr/src/app
WORKDIR /usr/src/app
RUN ./build.sh raspberrypi3 '2.0.0-beta.7' example_module

CMD ./run.sh
