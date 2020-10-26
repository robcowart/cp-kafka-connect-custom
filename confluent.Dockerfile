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

FROM robcowart/cp-kafka-connect-custom:6.0.0_1.0.3_community

ARG BUILD_DATE

LABEL org.opencontainers.image.created="$BUILD_DATE" \
      org.opencontainers.image.authors="elastiflow@gmail.com" \
      org.opencontainers.image.url="https://hub.docker.com/r/robcowart/cp-kafka-connect-custom" \
      org.opencontainers.image.documentation="https://github.com/robcowart/cp-kafka-connect-custom/README.md" \
      org.opencontainers.image.source="https://github.com/robcowart/cp-kafka-connect-custom" \
      org.opencontainers.image.version="6.0.0_1.0.3_confluent" \
      org.opencontainers.image.vendor="Robert Cowart" \
      org.opencontainers.image.title="cp-kafka-connect-custom" \
      org.opencontainers.image.description="A custom Confluent Platform Kafka Connect container with additional community and Confluent licensed connectors from Confluent Hub."

RUN confluent-hub install --no-prompt confluentinc/connect-transforms:latest && \
    confluent-hub install --no-prompt confluentinc/kafka-connect-activemq:latest && \
    confluent-hub install --no-prompt confluentinc/kafka-connect-activemq-sink:latest && \
    confluent-hub install --no-prompt confluentinc/kafka-connect-amps:latest && \
    confluent-hub install --no-prompt confluentinc/kafka-connect-appdynamics-metrics:latest && \
    confluent-hub install --no-prompt confluentinc/kafka-connect-aws-cloudwatch-logs:latest && \
    confluent-hub install --no-prompt confluentinc/kafka-connect-aws-cloudwatch-metrics:latest && \
    confluent-hub install --no-prompt confluentinc/kafka-connect-aws-dynamodb:latest && \
    confluent-hub install --no-prompt confluentinc/kafka-connect-aws-lambda:latest && \
    confluent-hub install --no-prompt confluentinc/kafka-connect-aws-redshift:latest && \
    confluent-hub install --no-prompt confluentinc/kafka-connect-azure-blob-storage:latest && \
    confluent-hub install --no-prompt confluentinc/kafka-connect-azure-blob-storage-source:latest && \
    confluent-hub install --no-prompt confluentinc/kafka-connect-azure-data-lake-gen1-storage:latest && \
    confluent-hub install --no-prompt confluentinc/kafka-connect-azure-data-lake-gen2-storage:latest && \
    confluent-hub install --no-prompt confluentinc/kafka-connect-azure-event-hubs:latest && \
    confluent-hub install --no-prompt confluentinc/kafka-connect-azure-functions:latest && \
    confluent-hub install --no-prompt confluentinc/kafka-connect-azure-search:latest && \
    confluent-hub install --no-prompt confluentinc/kafka-connect-azure-service-bus:latest && \
    confluent-hub install --no-prompt confluentinc/kafka-connect-azure-sql-dw:latest && \
    confluent-hub install --no-prompt confluentinc/kafka-connect-cassandra:latest && \
    confluent-hub install --no-prompt confluentinc/kafka-connect-data-diode:latest && \
    confluent-hub install --no-prompt confluentinc/kafka-connect-datadog-metrics:latest && \
    confluent-hub install --no-prompt confluentinc/kafka-connect-firebase:latest && \
    confluent-hub install --no-prompt confluentinc/kafka-connect-ftps:latest && \
    confluent-hub install --no-prompt confluentinc/kafka-connect-gcp-bigtable:latest && \
    confluent-hub install --no-prompt confluentinc/kafka-connect-gcp-dataproc-sink:latest && \
    confluent-hub install --no-prompt confluentinc/kafka-connect-gcp-functions:latest && \
    confluent-hub install --no-prompt confluentinc/kafka-connect-gcp-pubsub:latest && \
    confluent-hub install --no-prompt confluentinc/kafka-connect-gcp-spanner:latest && \
    confluent-hub install --no-prompt confluentinc/kafka-connect-gcs:latest && \
    confluent-hub install --no-prompt confluentinc/kafka-connect-gcs-source:latest && \
    confluent-hub install --no-prompt confluentinc/kafka-connect-github:latest && \
    confluent-hub install --no-prompt confluentinc/kafka-connect-hbase:latest && \
    confluent-hub install --no-prompt confluentinc/kafka-connect-hdfs2-source:latest && \
    confluent-hub install --no-prompt confluentinc/kafka-connect-hdfs3:latest && \
    confluent-hub install --no-prompt confluentinc/kafka-connect-hdfs3-source:latest && \
    confluent-hub install --no-prompt confluentinc/kafka-connect-http:latest && \
    confluent-hub install --no-prompt confluentinc/kafka-connect-ibmmq:latest && \
    confluent-hub install --no-prompt confluentinc/kafka-connect-ibmmq-sink:latest && \
    confluent-hub install --no-prompt confluentinc/kafka-connect-influxdb:latest && \
    confluent-hub install --no-prompt confluentinc/kafka-connect-jira:latest && \
    confluent-hub install --no-prompt confluentinc/kafka-connect-jms:latest && \
    confluent-hub install --no-prompt confluentinc/kafka-connect-jms-sink:latest && \
    confluent-hub install --no-prompt confluentinc/kafka-connect-kinesis:latest && \
    confluent-hub install --no-prompt confluentinc/kafka-connect-kudu:latest && \
    confluent-hub install --no-prompt confluentinc/kafka-connect-maprdb:latest && \
    confluent-hub install --no-prompt confluentinc/kafka-connect-marketo:latest && \
    confluent-hub install --no-prompt confluentinc/kafka-connect-mqtt:latest && \
    confluent-hub install --no-prompt confluentinc/kafka-connect-netezza:latest && \
    confluent-hub install --no-prompt confluentinc/kafka-connect-omnisci:latest && \
    confluent-hub install --no-prompt confluentinc/kafka-connect-pagerduty:latest && \
    confluent-hub install --no-prompt confluentinc/kafka-connect-pivotal-gemfire:latest && \
    confluent-hub install --no-prompt confluentinc/kafka-connect-prometheus-metrics:latest && \
    confluent-hub install --no-prompt confluentinc/kafka-connect-rabbitmq:latest && \
    confluent-hub install --no-prompt confluentinc/kafka-connect-rabbitmq-sink:latest && \
    confluent-hub install --no-prompt confluentinc/kafka-connect-replicator:latest && \
    confluent-hub install --no-prompt confluentinc/kafka-connect-s3-source:latest && \
    confluent-hub install --no-prompt confluentinc/kafka-connect-salesforce:latest && \
    confluent-hub install --no-prompt confluentinc/kafka-connect-salesforce-bulk-api:latest && \
    confluent-hub install --no-prompt confluentinc/kafka-connect-servicenow:latest && \
    confluent-hub install --no-prompt confluentinc/kafka-connect-sftp:latest && \
    confluent-hub install --no-prompt confluentinc/kafka-connect-snmp:latest && \
    confluent-hub install --no-prompt confluentinc/kafka-connect-solace-sink:latest && \
    confluent-hub install --no-prompt confluentinc/kafka-connect-solace-source:latest && \
    confluent-hub install --no-prompt confluentinc/kafka-connect-splunk-source:latest && \
    confluent-hub install --no-prompt confluentinc/kafka-connect-sqs:latest && \
    confluent-hub install --no-prompt confluentinc/kafka-connect-syslog:latest && \
    confluent-hub install --no-prompt confluentinc/kafka-connect-teradata:latest && \
    confluent-hub install --no-prompt confluentinc/kafka-connect-tibco-sink:latest && \
    confluent-hub install --no-prompt confluentinc/kafka-connect-tibco-source:latest && \
    confluent-hub install --no-prompt confluentinc/kafka-connect-vertica:latest && \
    confluent-hub install --no-prompt confluentinc/kafka-connect-zendesk:latest
