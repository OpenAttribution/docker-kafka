ARG ubuntu_release=22.04
FROM ubuntu:${ubuntu_release} as base

# Use the official Kafka image from Confluent
FROM confluentinc/cp-kafka:latest

# Environment variables for Kafka
# KAFKA_ZOOKEEPER_CONNECT=zookeeper:2181 \
#     KAFKA_ADVERTISED_LISTENERS=PLAINTEXT://kafka:9092 \
#     KAFKA_OFFSETS_TOPIC_REPLICATION_FACTOR=1
ENV KAFKA_BROKER_ID=1 \
      KAFKA_BROKER_ID=1 \ 
      KAFKA_CFG_ZOOKEEPER_CONNECT=zookeeper:2181 \
      ALLOW_PLAINTEXT_LISTENER=yes \ 
      KAFKA_CFG_LISTENER_SECURITY_PROTOCOL_MAP=CLIENT:PLAINTEXT,EXTERNAL:PLAINTEXT \
      KAFKA_CFG_LISTENERS=CLIENT://:9092,EXTERNAL://:9093 \
      KAFKA_CFG_ADVERTISED_LISTENERS=CLIENT://kafka:9092,EXTERNAL://localhost:9093 \
      KAFKA_CFG_INTER_BROKER_LISTENER_NAME=CLIENT

# # Copy the script to create topics
COPY create-topics.sh /create-topics.sh
# RUN chmod +x /opt/create-topics.sh


# # Command to create topics and start Kafka
CMD ["/create-topics.sh"]


