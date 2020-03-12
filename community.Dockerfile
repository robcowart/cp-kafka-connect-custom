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

FROM confluentinc/cp-kafka-connect-base:5.4.1

ARG BUILD_DATE

LABEL org.opencontainers.image.created="$BUILD_DATE" \
      org.opencontainers.image.authors="elastiflow@gmail.com" \
      org.opencontainers.image.url="https://hub.docker.com/r/robcowart/cp-kafka-connect-custom" \
      org.opencontainers.image.documentation="https://github.com/robcowart/cp-kafka-connect-custom/README.md" \
      org.opencontainers.image.source="https://github.com/robcowart/cp-kafka-connect-custom" \
      org.opencontainers.image.version="5.4.1_1.0.1_community" \
      org.opencontainers.image.vendor="Robert Cowart" \
      org.opencontainers.image.title="cp-kafka-connect-custom" \
      org.opencontainers.image.description="A custom Confluent Platform Kafka Connect container with additional community licensed connectors from Confluent Hub."

RUN confluent-hub install --no-prompt confluentinc/connect-transforms:1.3.0 && \
    confluent-hub install --no-prompt confluentinc/kafka-connect-avro-converter:5.4.1 && \
    confluent-hub install --no-prompt confluentinc/kafka-connect-datagen:0.3.1 && \
    confluent-hub install --no-prompt confluentinc/kafka-connect-elasticsearch:5.4.1 && \
    confluent-hub install --no-prompt confluentinc/kafka-connect-hdfs:5.4.1 && \
    confluent-hub install --no-prompt confluentinc/kafka-connect-jdbc:5.4.1 && \
    confluent-hub install --no-prompt confluentinc/kafka-connect-s3:5.4.1 && \
    confluent-hub install --no-prompt confluentinc/kafka-connect-vertica:1.0.2 && \
    confluent-hub install --no-prompt bkatwal/bkatwal-kafka-connect-solr-sink:2.0 && \
    confluent-hub install --no-prompt blueapron/kafka-connect-protobuf-converter:3.1.0 && \
    confluent-hub install --no-prompt C0urante/kafka-connect-reddit:0.1.2 && \
    confluent-hub install --no-prompt chaitalisagesh/kafka-connect-log-analytics:0.1 && \
    confluent-hub install --no-prompt cjmatta/kafka-connect-irc:5.0.0 && \
    confluent-hub install --no-prompt debezium/debezium-connector-mongodb:1.0.0 && \
    confluent-hub install --no-prompt debezium/debezium-connector-mysql:1.0.0 && \
    confluent-hub install --no-prompt debezium/debezium-connector-postgresql:1.0.0 && \
    confluent-hub install --no-prompt debezium/debezium-connector-sqlserver:1.0.0 && \
    confluent-hub install --no-prompt dhananjaypatkar/kafka-connect-phoenix:0.1 && \
    confluent-hub install --no-prompt fbascheper/kafka-connect-telegram:0.2.0 && \
    confluent-hub install --no-prompt hpgrahsl/kafka-connect-mongodb:1.3.1 && \
    confluent-hub install --no-prompt humio/kafka-connect-hec-sink:1.0 && \
    confluent-hub install --no-prompt jaredpetersen/kafka-connect-arangodb:1.0.4 && \
    confluent-hub install --no-prompt jcustenborder/kafka-connect-aerospike:0.2.4 && \
    confluent-hub install --no-prompt jcustenborder/kafka-connect-json-schema:0.0.2.1 && \
    confluent-hub install --no-prompt jcustenborder/kafka-connect-memcached:0.1.0.10 && \
    confluent-hub install --no-prompt jcustenborder/kafka-connect-redis:0.0.2.11 && \
    confluent-hub install --no-prompt jcustenborder/kafka-connect-simulator:0.1.120 && \
    confluent-hub install --no-prompt jcustenborder/kafka-connect-solr:0.1.34 && \
    confluent-hub install --no-prompt jcustenborder/kafka-connect-spooldir:2.0.43 && \
    confluent-hub install --no-prompt jcustenborder/kafka-connect-transform-common:0.1.0.34 && \
    confluent-hub install --no-prompt jcustenborder/kafka-connect-transform-fix:0.1.0.1 && \
    confluent-hub install --no-prompt jcustenborder/kafka-connect-transform-maxmind:0.1.0.10 && \
    confluent-hub install --no-prompt jcustenborder/kafka-connect-transform-xml:0.1.0.17 && \
    confluent-hub install --no-prompt jcustenborder/kafka-connect-twitter:0.3.33 && \
    confluent-hub install --no-prompt juxt/kafka-connect-crux:19.12-1.6.1-alpha && \
    confluent-hub install --no-prompt kaliy/kafka-connect-rss:0.1.0 && \
    confluent-hub install --no-prompt mdrogalis/voluble:0.1.0 && \
    confluent-hub install --no-prompt microsoft/kafka-connect-iothub:0.6 && \
    confluent-hub install --no-prompt mongodb/kafka-connect-mongodb:1.0.1 && \
    confluent-hub install --no-prompt neo4j/kafka-connect-neo4j:1.0.2 && \
    confluent-hub install --no-prompt nishutayal/kafka-connect-hbase:1.0.1 && \
    confluent-hub install --no-prompt opencredo/kafka-connect-venafi:0.9.5 && \
    confluent-hub install --no-prompt rockset/kafka-connect-rockset:1.2.1 && \
    confluent-hub install --no-prompt sanjuthomas/kafka-connect-gcp-bigtable:1.0.7 && \
    confluent-hub install --no-prompt ScyllaDB/kafka-connect-scylladb:1.0.0 && \
    confluent-hub install --no-prompt splunk/kafka-connect-splunk:1.1.1 && \
    confluent-hub install --no-prompt streamthoughts/kafka-connect-file-pulse:1.2.1 && \
    confluent-hub install --no-prompt thomaskwscott/kafka-connect-shell-sink:5.1.0 && \
    confluent-hub install --no-prompt thomaskwscott/kafka-connect-shell-source:5.1.0 && \
    confluent-hub install --no-prompt wepay/kafka-connect-bigquery:1.6.1 && \
    confluent-hub install --no-prompt yugabyteinc/yb-kafka-connector:1.0.0 && \
    confluent-hub install --no-prompt zeebe-io/kafka-connect-zeebe:0.22.0
