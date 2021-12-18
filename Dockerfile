FROM ubuntu-jdk-mvn
RUN mkdir docker
WORKDIR /docker
COPY pom.xml testNG.xml send_notification.sh ./
ADD src src
RUN mvn dependency:resolve
RUN mvn clean install -DskipTests