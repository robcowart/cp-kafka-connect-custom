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

FROM confluentinc/cp-kafka-connect-base:5.3.1-1

ARG BUILD_DATE

LABEL org.opencontainers.image.created="$BUILD_DATE" \
      org.opencontainers.image.authors="elastiflow@gmail.com" \
      org.opencontainers.image.url="https://hub.docker.com/r/robcowart/cp-kafka-connect-custom" \
      org.opencontainers.image.documentation="https://github.com/robcowart/cp-kafka-connect-custom/README.md" \
      org.opencontainers.image.source="https://github.com/robcowart/cp-kafka-connect-custom" \
      org.opencontainers.image.version="5.3.1_0.0.1" \
      org.opencontainers.image.vendor="Robert Cowart" \
      org.opencontainers.image.title="cp-kafka-connect-custom" \
      org.opencontainers.image.description="A custom Confluent Platform Kafka Connect container with additional connectors from Confluent Hub." \
      org.opencontainers.image.licenses="Apache-2.0"

RUN confluent-hub install --no-prompt confluentinc/connect-transforms:1.2.1 && \
    confluent-hub install --no-prompt confluentinc/kafka-connect-avro-converter:5.3.1 && \
    confluent-hub install --no-prompt confluentinc/kafka-connect-elasticsearch:5.3.1 && \
    confluent-hub install --no-prompt confluentinc/kafka-connect-http:1.0.3 && \
    confluent-hub install --no-prompt confluentinc/kafka-connect-influxdb:1.1.0-preview && \
    confluent-hub install --no-prompt confluentinc/kafka-connect-jdbc:5.3.1 && \
    confluent-hub install --no-prompt confluentinc/kafka-connect-mqtt:1.2.3 && \
    confluent-hub install --no-prompt confluentinc/kafka-connect-rabbitmq:1.1.1 && \
    confluent-hub install --no-prompt confluentinc/kafka-connect-replicator:5.3.1 && \
    confluent-hub install --no-prompt confluentinc/kafka-connect-splunk-source:1.0.0-preview && \
    confluent-hub install --no-prompt confluentinc/kafka-connect-syslog:1.2.5 && \
    confluent-hub install --no-prompt blueapron/kafka-connect-protobuf-converter:2.0.0 && \
    confluent-hub install --no-prompt debezium/debezium-connector-mysql:0.9.5 && \
    confluent-hub install --no-prompt debezium/debezium-connector-postgresql:0.9.5 && \
    confluent-hub install --no-prompt jcustenborder/kafka-connect-memcached:0.1.0.10 && \
    confluent-hub install --no-prompt jcustenborder/kafka-connect-redis:0.0.2.9 && \
    confluent-hub install --no-prompt jcustenborder/kafka-connect-transform-maxmind:0.1.0.8 && \
    confluent-hub install --no-prompt jcustenborder/kafka-connect-spooldir:1.0.41 && \
    confluent-hub install --no-prompt jcustenborder/kafka-connect-transform-common:0.1.0.28 && \
    confluent-hub install --no-prompt mongodb/kafka-connect-mongodb:0.2 && \
    confluent-hub install --no-prompt neo4j/kafka-connect-neo4j:1.0.2
