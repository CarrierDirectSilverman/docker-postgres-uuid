FROM postgres:14-apline

LABEL authors="Nicolas Bös,David Silverman"

RUN apk update && apk add package -y postgresql-contrib

ADD createExtension.sh /docker-entrypoint-initdb.d/
RUN chmod 755 /docker-entrypoint-initdb.d/createExtension.sh