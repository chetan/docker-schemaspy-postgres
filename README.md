## Docker SchemaSpy Postgres

A docker image for connecting to a PostgreSQL schema and using [SchemaSpy](http://schemaspy.org/) to provide analysis:

#### Generate files from schema

```sh
# using helper script
docker run --rm -v "$PWD/output":/output chetan/docker-schemaspy-postgres \
           spy <db_name> <schema_name> <host> <username> <password>

# or run it directly via:
docker run --rm -v "$PWD/output":/output chetan/docker-schemaspy-postgres \
           bash -c "java -jar /opt/schemaSpy.jar -t pgsql -dp /opt/postgresql-jdbc4.jar \
           -db db_name -s db_schema -host db_host -u db_user -p db_password -o /output"
```
