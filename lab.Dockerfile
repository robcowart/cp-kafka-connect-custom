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

FROM confluentinc/cp-kafka-connect-base:6.0.0

ARG BUILD_DATE

LABEL org.opencontainers.image.created="$BUILD_DATE" \
      org.opencontainers.image.authors="elastiflow@gmail.com" \
      org.opencontainers.image.url="https://hub.docker.com/r/robcowart/cp-kafka-connect-custom" \
      org.opencontainers.image.documentation="https://github.com/robcowart/cp-kafka-connect-custom/README.md" \
      org.opencontainers.image.source="https://github.com/robcowart/cp-kafka-connect-custom" \
      org.opencontainers.image.version="6.0.0_1.0.3_lab" \
      org.opencontainers.image.vendor="Robert Cowart" \
      org.opencontainers.image.title="cp-kafka-connect-custom" \
      org.opencontainers.image.description="A custom Confluent Platform Kafka Connect container with additional connectors from Confluent Hub."

RUN confluent-hub install --no-prompt confluentinc/connect-transforms:latest && \
    confluent-hub install --no-prompt confluentinc/kafka-connect-avro-converter:latest && \
    confluent-hub install --no-prompt confluentinc/kafka-connect-elasticsearch:latest && \
    confluent-hub install --no-prompt confluentinc/kafka-connect-s3:latest && \
    confluent-hub install --no-prompt blueapron/kafka-connect-protobuf-converter:latest && \
    confluent-hub install --no-prompt debezium/debezium-connector-mongodb:latest && \
    confluent-hub install --no-prompt debezium/debezium-connector-mysql:latest && \
    confluent-hub install --no-prompt debezium/debezium-connector-postgresql:latest && \
    confluent-hub install --no-prompt jcustenborder/kafka-connect-json-schema:latest && \
    confluent-hub install --no-prompt jcustenborder/kafka-connect-memcached:latest && \
    confluent-hub install --no-prompt jcustenborder/kafka-connect-redis:latest && \
    confluent-hub install --no-prompt jcustenborder/kafka-connect-transform-common:latest && \
    confluent-hub install --no-prompt jcustenborder/kafka-connect-transform-fix:latest && \
    confluent-hub install --no-prompt jcustenborder/kafka-connect-transform-maxmind:latest && \
    confluent-hub install --no-prompt jcustenborder/kafka-connect-transform-xml:latest && \
    confluent-hub install --no-prompt jcustenborder/kafka-connect-twitter:latest && \
    confluent-hub install --no-prompt mongodb/kafka-connect-mongodb:latest && \
    confluent-hub install --no-prompt neo4j/kafka-connect-neo4j:latest && \
    confluent-hub install --no-prompt splunk/kafka-connect-splunk:latest && \
    confluent-hub install --no-prompt confluentinc/kafka-connect-cassandra:latest && \
    confluent-hub install --no-prompt confluentinc/kafka-connect-http:latest && \
    confluent-hub install --no-prompt confluentinc/kafka-connect-influxdb:latest && \
    confluent-hub install --no-prompt confluentinc/kafka-connect-mqtt:latest && \
    confluent-hub install --no-prompt confluentinc/kafka-connect-rabbitmq:latest && \
    confluent-hub install --no-prompt confluentinc/kafka-connect-replicator:latest && \
    confluent-hub install --no-prompt confluentinc/kafka-connect-s3-source:latest && \
    confluent-hub install --no-prompt confluentinc/kafka-connect-sftp:latest
