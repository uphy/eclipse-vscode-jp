FROM dorowu/ubuntu-desktop-lxde-vnc

# Install development tools.
RUN apt-get update && \
    apt-get install -y \
      openjdk-8-jdk \
      openjfx \
      git \
      maven && \
    apt-get autoclean && \
    apt-get autoremove && \
    rm -rf /var/lib/apt/lists/*

# Install Eclipse
RUN curl -O http://mirror.downloadvn.com/eclipse/technology/epp/downloads/release/oxygen/R/eclipse-java-oxygen-R-linux-gtk-x86_64.tar.gz && \
    tar xvf eclipse*.tar.gz && \
    mv eclipse /usr/local && \
    rm -rf eclipse*.tar.gz

COPY image /