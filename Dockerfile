FROM jenkins/jenkins:lts
# Switch to root & install wget
USER root
RUN apt update && apt install wget -y
RUN wget -c https://dlcdn.apache.org/maven/maven-3/3.9.3/binaries/apache-maven-3.9.3-bin.tar.gz -O - | tar -xz \
    && mv apache-maven-3.9.3 /usr/share/maven 
ENV PATH=$PATH:/usr/share/maven:/usr/share/maven/bin

# Change the default user back to jenkins
USER jenkins