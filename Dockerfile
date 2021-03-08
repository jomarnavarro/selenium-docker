FROM openjdk:8u191-jre-alpine3.8

#workspace
WORKDIR /usr/share/udemy

# add .jar under target from host into this image
ADD target/selenium-docker.jar selenium-docker.jar
ADD target/selenium-docker-tests.jar selenium-docker-tests.jar
ADD target/libs libs

# if there are any other dependencies like .csv files, etc.
# add here as well.

# add suite files
ADD book-flight-module.xml book-flight-module.xml
ADD search-module.xml search-module.xml

# ENV VARS
# BROWSER, HUB_HOST, MODULE
ENTRYPOINT java -cp selenium-docker.jar:selenium-docker-tests.jar:libs/* -DBROWSER=$BROWSER -DHUB_HOST=$HUB_HOST org.testng.TestNG $MODULE

