FROM openjdk:8 AS BUILD_IMAGE
RUN apt update -y && apt install maven -y
RUN git clone -b multistagedocker https://github.com/agsgd/vprofile-2024.git 
RUN cd vprofile-2024 && mvn install

FROM tomcat:8-jre11
RUN rm -rf /usr/local/tomcat/webapps/*
COPY --from=BUILD_IMAGE vprofile-2024/target/vprofile-v2.war /usr/local/tomcat/webapps/ROOT.war
EXPOSE 8080
CMD ["catalina.sh", "run"]

