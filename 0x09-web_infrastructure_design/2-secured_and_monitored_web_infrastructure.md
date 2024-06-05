## Secured and Monitored Web Infrastructure

![Image of a secured and monitored infrastructure](https://imgur.com/076VHlv)

## Description
This web infrastructure consists of three servers designed to ensure security, monitoring, and encrypted traffic transmission.

## Key Features of the Infrastructure

## Firewalls
- **External Firewall:** Filters incoming traffic to the load balancer, ensuring only legitimate requests reach the servers.

- **Web Firewall:** Protects the web server from unauthorized access and attacks.

- **App Firewall:** Protects the application server and database server from internal threats and unauthorized access.

- **Purpose:** Firewalls are used to enhance security by filtering traffic, blocking malicious requests, and preventing unauthorized access to the network and servers.

## SSL Cerificate
- Enables HTTPS, encrypting traffic between users and the web server, ensuring data confidentiality and integrity. Encrypts data to protect against eavesdropping, tampering, and man-in-the-middle attacks. It also provides authentication, verifying the website's identity.

## Monitoring Clients
- Monitor the health, performance, and security of the infrastructure. Collects metrics, logs, and other data to detect issues, perform analysis, and ensure the system operates smoothly.
- Monitoring clients (like Sumologic) collect data from various sources (system logs, application logs, performance metrics) and send it to a central monitoring service for analysis and alerts.

## Load Balancer (HA Proxy)
- Distributes incoming traffic across the web server and application server to ensure balanced load and high availability.

## Monitoring Web Server QPS (Queries Per Second)
- Measure of how many requests the web server handles per second. The monitoring client on the web server to collect and send metrics to the monitoring service. Configure the monitoring tool to specifically track and report on QPS.

## Identified Issues with the Infrastructure

## Terminating SSL at the Load Balancer
-  The traffic between the load balancer and the backend servers is unencrypted, potentially exposing sensitive data to internal threats, if SSl is terminated at the Load Balancer.
-  Use end-to-end encryption by configuring SSL on both the load balancer and the backend servers to mitigate this type of vulnerability.

## Single MySQL Server for Writes
-  One MySQL server capable of accepting writes creates a single point of failure. If the primary server goes down, write operations cannot be performed. It's important to  implement MySQL replication with a primary-replica setup or use a distributed database system to ensure high availability and fault tolerance.

## Servers with All Components
- Combining the database, web server, and application server on the same machine can lead to resource contention, where different components compete for the same resources (CPU, memory, I/O). Separate the components onto different servers or use containerization/virtualization to isolate resources and manage them more effectively.
