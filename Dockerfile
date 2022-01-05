FROM docker.io/stardog/stardog:7.8.0-java11-preview

ENV STARDOG_HOME="/var/opt/stardog/"
ENV STARDOG_EXT="/opt/stardog/ext"
ENV STARDOG_SERVER_JAVA_ARGS="-Xmx8g -Xms8g -XX:MaxDirectMemorySize=12g -Dlog4j2.formatMsgNoLookups=true"

ARG OJDBC10_VERSION="19.12.0.0"

RUN mkdir -p "${STARDOG_EXT}"
RUN curl \
  "https://repo1.maven.org/maven2/com/oracle/database/jdbc/ojdbc10/${OJDBC10_VERSION}/ojdbc10-${OJDBC10_VERSION}.jar" \
  -o "${STARDOG_EXT}/ojdbc10-${OJDBC10_VERSION}.jar"
