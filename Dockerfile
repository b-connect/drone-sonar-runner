FROM openjdk:8-jre-alpine
MAINTAINER YPCloud <cloud@yp.ca>

WORKDIR /opt/sonar
RUN mkdir -p /opt/sonar/conf

ENV SONAR_RUNNER_VERSION 2.4
RUN wget http://repo1.maven.org/maven2/org/codehaus/sonar/runner/sonar-runner-dist/2.4/sonar-runner-dist-2.4.jar -O /opt/sonar/runner.jar

RUN apk update && \
  apk add \
    ca-certificates && \
  rm -rf /var/cache/apk/*


ADD runner.sh /opt/sonar/runner.sh
RUN chmod +x /opt/sonar/runner.sh
ENTRYPOINT ['bin/sh', '/opt/sonar/runner.sh']