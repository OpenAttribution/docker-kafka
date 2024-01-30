#!/bin/bash

# Wait for Kafka to become available
echo "Waiting for Kafka to become available..."
cub kafka-ready -b kafka:9092 1 20

# Create the topics
kafka-topics --create --if-not-exists --bootstrap-server kafka:9092 --partitions 1 --replication-factor 1 --topic impressions
kafka-topics --create --if-not-exists --bootstrap-server kafka:9092 --partitions 1 --replication-factor 1 --topic clicks
kafka-topics --create --if-not-exists --bootstrap-server kafka:9092 --partitions 1 --replication-factor 1 --topic events

# Start Kafka
#exec /etc/confluent/docker/run

