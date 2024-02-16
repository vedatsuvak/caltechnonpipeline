# Build stage
FROM openjdk:17 AS build
EXPOSE 8085
ADD target/Nov9SpringCoreZumba.war Nov9SpringCoreZumba.war
ENTRYPOINT [ "java", "-jar", "/Nov9SpringCoreZumba.war" ]

# Final stage
FROM openjdk:17
COPY --from=build /Nov9SpringCoreZumba.war /Nov9SpringCoreZumba.war
EXPOSE 8085
ENTRYPOINT [ "java", "-jar", "/Nov9SpringCoreZumba.war" ]
