# Build stage
FROM openjdk:17 AS build
ARG amd64
ARG aarch64
EXPOSE 8085
ADD target/Nov9SpringCoreZumba.war Nov9SpringCoreZumba.war
ENTRYPOINT [ "java", "-jar", "/Nov9SpringCoreZumba.war" ]


