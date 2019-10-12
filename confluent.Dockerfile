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

FROM robcowart/cp-kafka-connect-custom:5.3.1_0.0.3_community

ARG BUILD_DATE

LABEL org.opencontainers.image.created="$BUILD_DATE" \
      org.opencontainers.image.authors="elastiflow@gmail.com" \
      org.opencontainers.image.url="https://hub.docker.com/r/robcowart/cp-kafka-connect-custom" \
      org.opencontainers.image.documentation="https://github.com/robcowart/cp-kafka-connect-custom/README.md" \
      org.opencontainers.image.source="https://github.com/robcowart/cp-kafka-connect-custom" \
      org.opencontainers.image.version="5.3.1_0.0.3_confluent" \
      org.opencontainers.image.vendor="Robert Cowart" \
      org.opencontainers.image.title="cp-kafka-connect-custom" \
      org.opencontainers.image.description="A custom Confluent Platform Kafka Connect container with additional community and Confluent licensed connectors from Confluent Hub."

RUN confluent-hub install --no-prompt confluentinc/connect-transforms:1.2.1 && \
    confluent-hub install --no-prompt confluentinc/kafka-connect-activemq:5.3.1 && \
    confluent-hub install --no-prompt confluentinc/kafka-connect-activemq-sink:1.1.1 && \
    confluent-hub install --no-prompt confluentinc/kafka-connect-aws-cloudwatch:1.0.0-preview && \
    confluent-hub install --no-prompt confluentinc/kafka-connect-aws-lambda:1.0.0-preview && \
    confluent-hub install --no-prompt confluentinc/kafka-connect-aws-redshift:1.0.0-preview && \
    confluent-hub install --no-prompt confluentinc/kafka-connect-azure-blob-storage:1.1.1 && \
    confluent-hub install --no-prompt confluentinc/kafka-connect-azure-data-lake-gen1-storage:1.1.1 && \
    confluent-hub install --no-prompt confluentinc/kafka-connect-azure-event-hubs:1.0.0-preview && \
    confluent-hub install --no-prompt confluentinc/kafka-connect-azure-functions:1.0.0-SNAPSHOT-preview && \
    confluent-hub install --no-prompt confluentinc/kafka-connect-azure-service-bus:1.0.0-preview && \
    confluent-hub install --no-prompt confluentinc/kafka-connect-azure-sql-dw:1.0.1-preview && \
    confluent-hub install --no-prompt confluentinc/kafka-connect-cassandra:1.1.3 && \
    confluent-hub install --no-prompt confluentinc/kafka-connect-data-diode:1.1.0 && \
    confluent-hub install --no-prompt confluentinc/kafka-connect-gcp-functions:1.0.2-preview && \
    confluent-hub install --no-prompt confluentinc/kafka-connect-gcp-spanner:1.0.1-preview && \
    confluent-hub install --no-prompt confluentinc/kafka-connect-gcs:5.0.3 && \
    confluent-hub install --no-prompt confluentinc/kafka-connect-hdfs3:1.0.2-preview && \
    confluent-hub install --no-prompt confluentinc/kafka-connect-http:1.0.3 && \
    confluent-hub install --no-prompt confluentinc/kafka-connect-ibmmq:5.3.1 && \
    confluent-hub install --no-prompt confluentinc/kafka-connect-ibmmq-sink:1.1.1 && \
    confluent-hub install --no-prompt confluentinc/kafka-connect-influxdb:1.1.0-preview && \
    confluent-hub install --no-prompt confluentinc/kafka-connect-jms:5.3.1 && \
    confluent-hub install --no-prompt confluentinc/kafka-connect-jms-sink:1.1.1-preview && \
    confluent-hub install --no-prompt confluentinc/kafka-connect-kinesis:1.1.4 && \
    confluent-hub install --no-prompt confluentinc/kafka-connect-maprdb:1.1.0 && \
    confluent-hub install --no-prompt confluentinc/kafka-connect-mqtt:1.2.3 && \
    confluent-hub install --no-prompt confluentinc/kafka-connect-netezza:1.0.0-preview && \
    confluent-hub install --no-prompt confluentinc/kafka-connect-omnisci:1.0.2 && \
    confluent-hub install --no-prompt confluentinc/kafka-connect-rabbitmq:1.1.1 && \
    confluent-hub install --no-prompt confluentinc/kafka-connect-replicator:5.3.1 && \
    confluent-hub install --no-prompt confluentinc/kafka-connect-s3-source:1.0.1 && \
    confluent-hub install --no-prompt confluentinc/kafka-connect-salesforce:1.2.2 && \
    confluent-hub install --no-prompt confluentinc/kafka-connect-servicenow:1.0.0-preview && \
    confluent-hub install --no-prompt confluentinc/kafka-connect-solace-sink:1.1.1-preview && \
    confluent-hub install --no-prompt confluentinc/kafka-connect-solace-source:1.0.0-preview && \
    confluent-hub install --no-prompt confluentinc/kafka-connect-splunk-source:1.0.0-preview && \
    confluent-hub install --no-prompt confluentinc/kafka-connect-sqs:1.0.1-preview && \
    confluent-hub install --no-prompt confluentinc/kafka-connect-syslog:1.2.6 && \
    confluent-hub install --no-prompt confluentinc/kafka-connect-tibco-sink:1.1.1-preview && \
    confluent-hub install --no-prompt confluentinc/kafka-connect-tibco-source:1.0.0-preview && \
    confluent-hub install --no-prompt confluentinc/kafka-connect-vertica:1.0.0-preview
