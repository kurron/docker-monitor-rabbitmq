FROM kurron/docker-newrelic-jvm-8-agent:latest 

MAINTAINER Ron Kurr <kurr@jvmguy.com>

ADD https://bintray.com/artifact/download/kurron/maven/org/kurron/example/monitor-rabbitmq/1.1.0.RELEASE/monitor-rabbitmq-1.1.0.RELEASE.jar /opt/example/application.jar

EXPOSE 8500

ENTRYPOINT ["java", "-server", "-javaagent:/opt/example/newrelic/newrelic.jar", "-Xmx512m", "-Dsun.net.inetaddr.ttl=60", "-jar", "/opt/example/application.jar"]
