# cp-kafka-connect-custom

Tooling to build a custom Confluent Platform Kafka Connect container with additional connectors from Confluent Hub.

![connect](https://user-images.githubusercontent.com/10326954/65959234-c465ca80-e451-11e9-8d66-7f43fae78ffb.png)

## Docker Hub

The containers are available on Docker Hub [HERE](https://hub.docker.com/r/robcowart/cp-kafka-connect-custom).

There are two container options, which can be identified by the the suffix added to their tags.

suffix | description
:---|:---
`_community` | Includes only those connectors released under the [Confluent Community License](http://www.confluent.io/confluent-community-license), or an Open Source license (e.g. MIT or Apache 2.0).
`_confluent` | Includes all connectors in the `_community` container, as well as those licensed under the [Confluent Software Evaluation License](https://www.confluent.io/software-evaluation-license).

## Bundled Connectors

### Community

Connector | Version
:--- | ---:
confluentinc/connect-transforms | 1.3.0
confluentinc/kafka-connect-avro-converter | 5.4.1
confluentinc/kafka-connect-datagen | 0.3.1
confluentinc/kafka-connect-elasticsearch | 5.4.1
confluentinc/kafka-connect-hdfs | 5.4.1
confluentinc/kafka-connect-jdbc | 5.4.1
confluentinc/kafka-connect-s3 | 5.4.1
confluentinc/kafka-connect-vertica | 1.0.2
bkatwal/bkatwal-kafka-connect-solr-sink | 2.0
blueapron/kafka-connect-protobuf-converter | 3.1.0
C0urante/kafka-connect-reddit | 0.1.2
chaitalisagesh/kafka-connect-log-analytics | 0.1
cjmatta/kafka-connect-irc | 5.0.0
debezium/debezium-connector-mongodb | 1.0.0
debezium/debezium-connector-mysql | 1.0.0
debezium/debezium-connector-postgresql | 1.0.0
debezium/debezium-connector-sqlserver | 1.0.0
dhananjaypatkar/kafka-connect-phoenix | 0.1
fbascheper/kafka-connect-telegram | 0.2.0
hpgrahsl/kafka-connect-mongodb | 1.3.1
humio/kafka-connect-hec-sink | 1.0
jaredpetersen/kafka-connect-arangodb | 1.0.4
jcustenborder/kafka-connect-aerospike | 0.2.4
jcustenborder/kafka-connect-json-schema | 0.0.2.1
jcustenborder/kafka-connect-memcached | 0.1.0.10
jcustenborder/kafka-connect-redis | 0.0.2.11
jcustenborder/kafka-connect-simulator | 0.1.120
jcustenborder/kafka-connect-solr | 0.1.34
jcustenborder/kafka-connect-spooldir | 2.0.43
jcustenborder/kafka-connect-transform-common | 0.1.0.34
jcustenborder/kafka-connect-transform-fix | 0.1.0.1
jcustenborder/kafka-connect-transform-maxmind | 0.1.0.10
jcustenborder/kafka-connect-transform-xml | 0.1.0.17
jcustenborder/kafka-connect-twitter | 0.3.33
juxt/kafka-connect-crux | 19.12-1.6.1-alpha
kaliy/kafka-connect-rss | 0.1.0
mdrogalis/voluble | 0.1.0
microsoft/kafka-connect-iothub | 0.6
mongodb/kafka-connect-mongodb | 1.0.1
neo4j/kafka-connect-neo4j | 1.0.2
nishutayal/kafka-connect-hbase | 1.0.1
opencredo/kafka-connect-venafi | 0.9.5
rockset/kafka-connect-rockset | 1.2.1
sanjuthomas/kafka-connect-gcp-bigtable | 1.0.7
ScyllaDB/kafka-connect-scylladb | 1.0.0
splunk/kafka-connect-splunk | 1.1.1
streamthoughts/kafka-connect-file-pulse | 1.2.1
thomaskwscott/kafka-connect-shell-sink | 5.1.0
thomaskwscott/kafka-connect-shell-source | 5.1.0
wepay/kafka-connect-bigquery | 1.6.1
yugabyteinc/yb-kafka-connector | 1.0.0
zeebe-io/kafka-connect-zeebe | 0.22.0


### Confluent

Connector | Version
:--- | ---:
confluentinc/kafka-connect-activemq | 5.4.1
confluentinc/kafka-connect-activemq-sink | 1.1.2
confluentinc/kafka-connect-appdynamics-metrics | 1.1.0-preview
confluentinc/kafka-connect-aws-cloudwatch-metrics | 1.1.0
confluentinc/kafka-connect-aws-cloudwatch-logs | 1.0.2
confluentinc/kafka-connect-aws-dynamodb | 1.0.2
confluentinc/kafka-connect-aws-lambda | 1.0.1
confluentinc/kafka-connect-aws-redshift | 1.0.1
confluentinc/kafka-connect-azure-blob-storage-source | 1.2.1
confluentinc/kafka-connect-azure-blob-storage | 1.3.1
confluentinc/kafka-connect-azure-data-lake-gen1-storage | 1.3.1
confluentinc/kafka-connect-azure-data-lake-gen2-storage | 1.3.1
confluentinc/kafka-connect-azure-event-hubs | 1.0.1
confluentinc/kafka-connect-azure-functions | 1.0.5
confluentinc/kafka-connect-azure-search | 1.0.1
confluentinc/kafka-connect-azure-service-bus | 1.0.2
confluentinc/kafka-connect-azure-sql-dw | 1.0.2
confluentinc/kafka-connect-cassandra | 1.2.0
confluentinc/kafka-connect-data-diode | 1.1.1
confluentinc/kafka-connect-datadog-metrics | 1.1.0-preview
confluentinc/kafka-connect-firebase | 1.1.1
confluentinc/kafka-connect-gcp-bigtable | 1.0.4
confluentinc/kafka-connect-gcp-dataproc-sink | 1.0.2
confluentinc/kafka-connect-gcp-functions | 1.0.6
confluentinc/kafka-connect-gcp-pubsub | 1.0.2
confluentinc/kafka-connect-gcp-spanner | 1.0.2
confluentinc/kafka-connect-gcs | 5.5.0
confluentinc/kafka-connect-gcs-source | 1.2.1
confluentinc/kafka-connect-hbase | 1.0.4
confluentinc/kafka-connect-hdfs3 | 1.0.5
confluentinc/kafka-connect-hdfs2-source | 1.2.1-preview
confluentinc/kafka-connect-hdfs3-source | 1.2.1
confluentinc/kafka-connect-http | 1.0.8
confluentinc/kafka-connect-ibmmq | 5.4.1
confluentinc/kafka-connect-ibmmq-sink | 1.1.2
confluentinc/kafka-connect-influxdb | 1.1.2
confluentinc/kafka-connect-jms | 5.4.1
confluentinc/kafka-connect-jms-sink | 1.1.2
confluentinc/kafka-connect-kinesis | 1.1.4
confluentinc/kafka-connect-kudu | 1.0.1
confluentinc/kafka-connect-maprdb | 1.1.1
confluentinc/kafka-connect-mqtt | 1.2.3
confluentinc/kafka-connect-netezza | 1.0.1
confluentinc/kafka-connect-omnisci | 1.0.2
confluentinc/kafka-connect-pagerduty | 1.0.0-preview
confluentinc/kafka-connect-pivotal-gemfire | 1.0.1
confluentinc/kafka-connect-prometheus-metrics | 1.1.0-preview
confluentinc/kafka-connect-rabbitmq | 1.2.0
confluentinc/kafka-connect-replicator | 5.4.1
confluentinc/kafka-connect-s3-source | 1.2.1
confluentinc/kafka-connect-salesforce | 1.4.2
confluentinc/kafka-connect-salesforce-bulk-api | 1.4.2-preview
confluentinc/kafka-connect-servicenow | 1.1.2
confluentinc/kafka-connect-sftp | 1.0.4
confluentinc/kafka-connect-snmp | 1.0.0-preview
confluentinc/kafka-connect-solace-sink | 1.1.2-preview
confluentinc/kafka-connect-solace-source | 1.1.0
confluentinc/kafka-connect-splunk-source | 1.0.2
confluentinc/kafka-connect-sqs | 1.0.3
confluentinc/kafka-connect-syslog | 1.2.6
confluentinc/kafka-connect-teradata | 1.0.2
confluentinc/kafka-connect-tibco-sink | 1.1.2
confluentinc/kafka-connect-tibco-source | 1.1.0
