FROM jboss/wildfly:10.0.0.Final

ADD /app/*.war /opt/jboss/wildfly/standalone/deployments/
ADD src/deployment/wildfly/configuration/standalone.conf /opt/jboss/wildfly/bin/
ADD src/deployment/wildfly/dbdriver/ /opt/jboss/wildfly/modules/system/layers/base/org/
RUN /opt/jboss/wildfly/bin/add-user.sh admin admin
ADD standalone.xml /opt/jboss/wildfly/standalone/configuration/

EXPOSE 8080 9990 8787

ENV JAVA_OPTS="-Djava.net.preferIPv4Stack=true"

CMD ["/opt/jboss/wildfly/bin/standalone.sh", "-c", "standalone.xml", "-b", "0.0.0.0", "-bmanagement", "0.0.0.0"]
