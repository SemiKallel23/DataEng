FROM openjdk:17-jdk-slim
COPY Backup_0.1.zip /opt
WORKDIR /opt
RUN apt-get update && apt-get install -y unzip
RUN unzip Backup_0.1.zip 
ENTRYPOINT ["sh", "./Backup/Backup_run.sh"]