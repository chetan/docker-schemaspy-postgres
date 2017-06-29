#!/bin/bash

db=$1
schema=$2
host=$3
user=$4
pass=$5

if [[ -z "$db" ]]; then
  echo "usage: $0 <db> <schema> <host> <user> <pass>"
  echo
  echo "or you can run SchemaSpy directly with:"
  echo "java -jar /opt/schemaSpy.jar -t pgsql -dp /opt/postgresql-jdbc4.jar [...]"
  exit 1
fi

cd /opt
java -jar schemaSpy.jar -t pgsql -dp postgresql-jdbc4.jar -o /output \
    -db "$db" -s "$schema" -host "$host" -u "$user" -p "$pass"

