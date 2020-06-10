# Database Diagram Generation

Use [SchemaSpy](http://schemaspy.readthedocs.io/en/latest/) to generate database diagrams and entity relationship documentation from the MySQL schemas used for learner record, identity, csrs.


### Local Usage

Schemaspy requires Java 8 installed locally to run

1. Check out the repository
2. Update your `schemaspy.properties` with the correct connection details for your chosen environment
3. Run `java -jar schemaspy-6.1.0.jar -vizjs`
4. View output in `/output`

Be sure not to commit changes to the properties file that include real paths, username or password


### Remote Usage

Check the Jenkins job for generating DB diagrams which invokes the `./generate.sh` script using encrypted variables for connection details and iterates through the three default databases in LPG: identity, csrs and learner_record


### Configuration

The `schemaspy.properties` file requires the following additional variables to run:

`schemaspy.host` - the FQDN or IP of the database host
`schemaspy.db` - database name (csrs, identity or learner_record)
`schemaspy.u` - username
`schemaspy.p` - password
`schemaspy.s` - schema name (this is the same as database name in LPG)
