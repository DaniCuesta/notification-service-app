package com.example.notificationservice;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.kafka.annotation.KafkaListener;

@SpringBootApplication
public class NotificationApplication {

    @Value("${KAFKA_BOOTSTRAP_SERVERS}")
    private String kafkaBootstrapServers;

    public static void main(String[] args) {
        SpringApplication.run(NotificationApplication.class, args);
    }

    @KafkaListener(id = "myGroup", topics = "order-topic", groupId = "notification-consumer-group")
    public void listen(String in) {
        System.out.println("Received message: " + in);
    }
}
