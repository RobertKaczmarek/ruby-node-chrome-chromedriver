FROM prograils/ruby-node-chrome:2.5.1
MAINTAINER Robert Kaczmarek <rkaczmarek@prograils.com>

# Install dependencies and ghostscript
RUN apt-get update -yq
RUN apt-get install -y libssl-dev wget cmake libmagic-dev tzdata xvfb ghostscript=9.26~dfsg+0-0ubuntu0.16.04.4

# Install chromedriver
RUN apt-get install -y zip unzip
RUN wget https://chromedriver.storage.googleapis.com/2.45/chromedriver_linux64.zip
RUN unzip chromedriver_linux64.zip
RUN mv chromedriver /usr/bin/chromedriver
RUN chown root:root /usr/bin/chromedriver
RUN chmod +x /usr/bin/chromedriver
