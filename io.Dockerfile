FROM debian:buster-slim

RUN apt-get update && apt-get install -y wget unzip libc6
RUN wget http://iobin.suspended-chord.info/linux/iobin-linux-x64-deb-current.zip
RUN unzip iobin-linux-x64-deb-current.zip
RUN dpkg -i IoLanguage-2013.11.04-Linux-x64.deb && apt-get install -f

CMD ["io"]
