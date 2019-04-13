FROM alpine:3.6.5
RUN apk --update add curl
RUN apk --update add graphviz
RUN apk --update add openjdk7-jre
RUN apk --update add ttf-freefont
RUN curl https://cfhcable.dl.sourceforge.net/project/plantuml/1.2019.4/plantuml.1.2019.4.jar > plantuml.jar
ENTRYPOINT ["java", "-jar", "plantuml.jar"]
