FROM jenkins/jenkins:lts-jdk11
# Switch to root & install maven package
USER root
RUN apt-get update && apt-get install -y maven
# Change the default user back to jenkins
USER jenkins