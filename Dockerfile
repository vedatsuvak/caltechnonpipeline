# Build stage
FROM openjdk:17 AS build
EXPOSE 8085
ADD target/Nov9SpringCoreZumba.war Nov9SpringCoreZumba.war
ENTRYPOINT [ "java", "-jar", "/Nov9SpringCoreZumba.war" ]

# Final stage
FROM adoptopenjdk:17-jdk-hotspot-bionic as jdk-amd64
FROM adoptopenjdk:17-jdk-hotspot-bionic-arm64 as jdk-arm64

FROM debian:buster-slim

COPY --from=jdk-amd64 /opt/java/openjdk /opt/java/openjdk
COPY --from=jdk-arm64 /opt/java/openjdk /opt/java/openjdk-arm64

RUN ln -s /opt/java/openjdk/bin/java /usr/bin/java

COPY --from=build /Nov9SpringCoreZumba.war /Nov9SpringCoreZumba.war

EXPOSE 8085
ENTRYPOINT [ "java", "-jar", "/Nov9SpringCoreZumba.war" ]
