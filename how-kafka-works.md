# Kafka Technical Insights

![image](https://www.tutorialspoint.com/apache_kafka/images/cluster_architecture.jpg)

## Topic Partitioning

- Kafka topics are divided into partitions for parallel processing and data distribution.
- Each partition is an ordered, immutable sequence of records.

## Producers

- Producers publish records to Kafka topics.
- Messages can be sent to specific partitions or partitioned based on a key.

## Brokers

- Kafka operates in a distributed cluster where each node is a broker.
- Brokers store data, handle partitions, and replicate data for fault tolerance.

## Topic Replication

- Topics consist of multiple partitions with replicas for fault tolerance.
- Replicas are distributed across different brokers.

## Consumers

- Consumers subscribe to Kafka topics and process records from partitions.
- Each consumer maintains its offset to track the last processed record.

## Consumer Groups

- Consumers can be organized into groups for parallelized data processing.
- Each partition is consumed by only one consumer in a group.

## Zookeeper (Deprecated in Newer Versions)

- Historically used for managing cluster metadata, leader election, and coordination.
- Kafka is transitioning away from Zookeeper dependency in newer versions.

## Log Compaction

- Kafka supports log compaction to retain the latest record for each key.
- Ensures the log doesn't grow indefinitely, maintaining the most recent state for each key.

## Data Retention

- Configurable data retention periods for topics.
- Older records are automatically purged based on retention settings.

## Exactly Once Semantics

- Kafka provides strong durability guarantees and supports exactly once semantics.
- Ensures messages are processed exactly once or not at all.

## Kafka Streams and Connect

- Kafka Streams enables real-time stream processing applications.
- Kafka Connect simplifies integration with external systems.
