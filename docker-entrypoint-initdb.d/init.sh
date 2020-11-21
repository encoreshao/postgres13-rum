#!/bin/bash

#set -e

#psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" <<-EOSQL
#    CREATE USER docker;
#    CREATE DATABASE docker;
#    GRANT ALL PRIVILEGES ON DATABASE docker TO docker;
#EOSQL

#psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "docker" <<-EOSQL
#    CREATE EXTENSION pg_trgm;
#    CREATE EXTENSION rum;
#    CREATE EXTENSION btree_gin;
#    CREATE EXTENSION plpgsql;
#EOSQL