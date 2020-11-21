FROM postgres:13

COPY docker-entrypoint-initdb.d /docker-entrypoint-initdb.d

RUN apt-get update && apt-get install -y --no-install-recommends postgresql-13-rum vim

RUN set -x \
    	&& apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* \
        && apt-get purge -y --auto-remove ca-certificates wget

VOLUME /var/lib/postgresql/data

EXPOSE 5432