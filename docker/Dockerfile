ARG ubuntu_release=22.04
FROM ubuntu:${ubuntu_release} as base

# Use the official Kafka image from Confluent
FROM confluentinc/cp-kafka:latest

# Environment variables for Kafka
ENV KAFKA_BROKER_ID=1 \
    KAFKA_ZOOKEEPER_CONNECT=zookeeper:2181 \
    KAFKA_ADVERTISED_LISTENERS=PLAINTEXT://kafka:9092 \
    KAFKA_OFFSETS_TOPIC_REPLICATION_FACTOR=1

# Copy the script to create topics
COPY create-topics.sh /usr/bin/create-topics.sh
RUN chmod +x /usr/bin/create-topics.sh

# Command to create topics and start Kafka
CMD ["/usr/bin/create-topics.sh"]


