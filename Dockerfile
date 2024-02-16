# Build stage
FROM openjdk:17 AS build
EXPOSE 8085
ADD target/Nov9SpringCoreZumba.war Nov9SpringCoreZumba.war
ENTRYPOINT [ "java", "-jar", "/Nov9SpringCoreZumba.war" ]

# Final stage
FROM adoptopenjdk:17-jdk-hotspot as jdk

FROM debian:buster-slim

COPY --from=jdk /opt/java/openjdk /opt/java/openjdk

RUN ln -s /opt/java/openjdk/bin/java /usr/bin/java

COPY --from=build /Nov9SpringCoreZumba.war /Nov9SpringCoreZumba.war

EXPOSE 8085
ENTRYPOINT [ "java", "-jar", "/Nov9SpringCoreZumba.war" ]
