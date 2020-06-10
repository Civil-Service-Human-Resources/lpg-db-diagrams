db_host=$1
db_username=$2
db_password=$3

java -jar schemaspy-6.1.0.jar -vizjs -db identity -s identity -o output/identity -norows -host "$db_host" -u "$db_username" -p "$db_password"
java -jar schemaspy-6.1.0.jar -vizjs -db csrs -s csrs -o output/csrs -norows -host "$db_host" -u "$db_username" -p "$db_password"
java -jar schemaspy-6.1.0.jar -vizjs -db learner_record -s learner_record -o output/learner_record -norows -host "$db_host" -u "$db_username" -p "$db_password"