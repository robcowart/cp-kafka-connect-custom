#------------------------------------------------------------------------------
# Copyright 2019 Robert Cowart
# 
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# 
#     http://www.apache.org/licenses/LICENSE-2.0
# 
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#------------------------------------------------------------------------------

FROM confluentinc/cp-kafka-connect-base

ARG BUILD_DATE

LABEL org.opencontainers.image.created="$BUILD_DATE" \
      org.opencontainers.image.authors="elastiflow@gmail.com" \
      org.opencontainers.image.url="https://hub.docker.com/r/robcowart/cp-kafka-connect-custom" \
      org.opencontainers.image.documentation="https://github.com/robcowart/cp-kafka-connect-custom/README.md" \
      org.opencontainers.image.source="https://github.com/robcowart/cp-kafka-connect-custom" \
      org.opencontainers.image.version="6.0.0_1.0.3_community" \
      org.opencontainers.image.vendor="Robert Cowart" \
      org.opencontainers.image.title="cp-kafka-connect-custom" \
      org.opencontainers.image.description="A custom Confluent Platform Kafka Connect container with additional community licensed connectors from Confluent Hub."

RUN confluent-hub install --no-prompt apache/kafka-connect-geode:latest && \
    confluent-hub install --no-prompt bkatwal/bkatwal-kafka-connect-solr-sink:latest && \
    confluent-hub install --no-prompt batchsh/sink-connector:latest && \
    confluent-hub install --no-prompt blueapron/kafka-connect-protobuf-converter:latest && \
    confluent-hub install --no-prompt C0urante/kafka-connect-reddit:latest && \
    confluent-hub install --no-prompt camunda/kafka-connect-zeebe:latest && \
    confluent-hub install --no-prompt castorm/kafka-connect-http:latest && \
    confluent-hub install --no-prompt chaitalisagesh/kafka-connect-log-analytics:latest && \
    confluent-hub install --no-prompt cjmatta/kafka-connect-irc:latest && \
    confluent-hub install --no-prompt cjmatta/kafka-connect-sse:latest && \
    confluent-hub install --no-prompt confluentinc/connect-transforms:latest && \
    confluent-hub install --no-prompt confluentinc/kafka-connect-avro-converter:latest && \
    confluent-hub install --no-prompt confluentinc/kafka-connect-datagen:latest && \
    confluent-hub install --no-prompt confluentinc/kafka-connect-elasticsearch:latest && \
    confluent-hub install --no-prompt confluentinc/kafka-connect-hdfs:latest && \
    confluent-hub install --no-prompt confluentinc/kafka-connect-jdbc:latest && \
    confluent-hub install --no-prompt confluentinc/kafka-connect-s3:latest && \
    confluent-hub install --no-prompt confluentinc/kafka-connect-vertica:latest && \
    confluent-hub install --no-prompt couchbase/kafka-connect-couchbase:latest && \
    confluent-hub install --no-prompt datadog/kafka-connect-logs:latest && \
    confluent-hub install --no-prompt datastax/kafka-connect-cassandra-sink:latest && \
    confluent-hub install --no-prompt debezium/debezium-connector-mongodb:latest && \
    confluent-hub install --no-prompt debezium/debezium-connector-mysql:latest && \
    confluent-hub install --no-prompt debezium/debezium-connector-postgresql:latest && \
    confluent-hub install --no-prompt debezium/debezium-connector-sqlserver:latest && \
    confluent-hub install --no-prompt dhananjaypatkar/kafka-connect-phoenix:latest && \
    confluent-hub install --no-prompt f0xdx/kafka-connect-wrap-smt:latest && \
    confluent-hub install --no-prompt fbascheper/kafka-connect-telegram:latest && \
    confluent-hub install --no-prompt findinpath/kafka-connect-nested-set-jdbc-sink:latest && \
    confluent-hub install --no-prompt hpgrahsl/kafka-connect-mongodb:latest && \
    confluent-hub install --no-prompt humio/kafka-connect-hec-sink:latest && \
    confluent-hub install --no-prompt jaredpetersen/kafka-connect-arangodb:latest && \
    confluent-hub install --no-prompt jcustenborder/kafka-connect-aerospike:latest && \
    confluent-hub install --no-prompt jcustenborder/kafka-connect-email:latest && \
    confluent-hub install --no-prompt jcustenborder/kafka-connect-flume-avro:latest && \
    confluent-hub install --no-prompt jcustenborder/kafka-connect-json-schema:latest && \
    confluent-hub install --no-prompt jcustenborder/kafka-connect-memcached:latest && \
    confluent-hub install --no-prompt jcustenborder/kafka-connect-opentsdb:latest && \
    confluent-hub install --no-prompt jcustenborder/kafka-connect-redis:latest && \
    confluent-hub install --no-prompt jcustenborder/kafka-connect-simulator:latest && \
    confluent-hub install --no-prompt jcustenborder/kafka-connect-solr:latest && \
    confluent-hub install --no-prompt jcustenborder/kafka-connect-spooldir:latest && \
    confluent-hub install --no-prompt jcustenborder/kafka-connect-transform-cobol:latest && \
    confluent-hub install --no-prompt jcustenborder/kafka-connect-transform-common:latest && \
    confluent-hub install --no-prompt jcustenborder/kafka-connect-transform-fix:latest && \
    confluent-hub install --no-prompt jcustenborder/kafka-connect-transform-maxmind:latest && \
    confluent-hub install --no-prompt jcustenborder/kafka-connect-transform-xml:latest && \
    confluent-hub install --no-prompt jcustenborder/kafka-connect-twitter:latest && \
    confluent-hub install --no-prompt juxt/kafka-connect-crux:latest && \
    confluent-hub install --no-prompt kaliy/kafka-connect-rss:latest && \
    confluent-hub install --no-prompt marklogic/kafka-marklogic-connector:latest && \
    confluent-hub install --no-prompt mdrogalis/voluble:latest && \
    confluent-hub install --no-prompt memsql/memsql-kafka-connector:latest && \
    confluent-hub install --no-prompt microsoft/kafka-connect-iothub:latest && \
    confluent-hub install --no-prompt microsoftcorporation/kafka-sink-azure-kusto:latest && \
    confluent-hub install --no-prompt mmolimar/kafka-connect-fs:latest && \
    confluent-hub install --no-prompt mongodb/kafka-connect-mongodb:latest && \
    confluent-hub install --no-prompt neo4j/kafka-connect-neo4j:latest && \
    confluent-hub install --no-prompt newrelic/newrelic-kafka-connector:latest && \
    confluent-hub install --no-prompt nishutayal/kafka-connect-hbase:latest && \
    confluent-hub install --no-prompt norsktipping/kafka-connect-jdbc_flatten:latest && \
    confluent-hub install --no-prompt opencredo/kafka-connect-venafi:latest && \
    confluent-hub install --no-prompt riferrei/kafka-connect-pulsar:latest && \
    confluent-hub install --no-prompt rockset/kafka-connect-rockset:latest && \
    confluent-hub install --no-prompt rudderstack/kafka-connect-rudderstack:latest && \
    confluent-hub install --no-prompt sanjuthomas/kafka-connect-gcp-bigtable:latest && \
    confluent-hub install --no-prompt sanjuthomas/kafka-connect-orientdb:latest && \
    confluent-hub install --no-prompt ScyllaDB/kafka-connect-scylladb:latest && \
    confluent-hub install --no-prompt snowflakeinc/snowflake-kafka-connector:latest && \
    confluent-hub install --no-prompt splunk/kafka-connect-splunk:latest && \
    confluent-hub install --no-prompt spoudinc/spoud-agoora:latest && \
    confluent-hub install --no-prompt streamthoughts/kafka-connect-file-pulse:latest && \
    confluent-hub install --no-prompt thomaskwscott/kafka-connect-shell-sink:latest && \
    confluent-hub install --no-prompt thomaskwscott/kafka-connect-shell-source:latest && \
    confluent-hub install --no-prompt wepay/kafka-connect-bigquery:latest && \
    confluent-hub install --no-prompt yugabyteinc/yb-kafka-connector:latest && \
    confluent-hub install --no-prompt zeebe-io/kafka-connect-zeebe:latest
