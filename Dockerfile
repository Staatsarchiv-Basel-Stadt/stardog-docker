FROM docker.io/stardog/stardog:7.8.2-java11-preview

ENV STARDOG_EXT="/opt/stardog/ext"

ARG OJDBC10_VERSION="19.12.0.0"
# ARG PGSQL_VERSION="42.2.5"

RUN mkdir -p "${STARDOG_EXT}"
RUN curl \
  "https://repo1.maven.org/maven2/com/oracle/database/jdbc/ojdbc10/${OJDBC10_VERSION}/ojdbc10-${OJDBC10_VERSION}.jar" \
  -o "${STARDOG_EXT}/ojdbc10-${OJDBC10_VERSION}.jar"
# use postgres for external testing
# RUN curl \
#  "https://jdbc.postgresql.org/download/postgresql-${PGSQL_VERSION}.jar" \
#  -o "${STARDOG_EXT}/postgresql-${PGSQL_VERSION}.jar"
