FROM openjdk:17
WORKDIR /server
RUN apt update && apt install wget -y
RUN wget https://ci.md-5.net/job/BungeeCord/lastSuccessfulBuild/artifact/bootstrap/target/BungeeCord.jar -O BungeeCord.jar
CMD ["java", "-jar", "BungeeCord.jar"]
