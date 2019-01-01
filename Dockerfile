
FROM tomcat:7.0
COPY target/gamutkart.war /usr/local/tomcat/webapps
RUN  useradd -m -d /home/dev dev -s /bin/bash
WORKDIR home/dev
USER dev
ENV JAVA_HOME /home/dev/distros/jdk1.8.0_151
ENTRYPOINT /usr/local/tomcat/bin/startup.sh && bash
