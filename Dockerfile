FROM openjdk:8-jre-alpine
VOLUME /tmp
EXPOSE 8080
ADD /bin/MyFirstApp.jar MyFirstApp.jar
RUN sh -c 'touch /MyFirstApp.jar'
ENV JAVA_OPTS=""
ENTRYPOINT [ "sh", "-c", "java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar /MyFirstApp.jar" ]