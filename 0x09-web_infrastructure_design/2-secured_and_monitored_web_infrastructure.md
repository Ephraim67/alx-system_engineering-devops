# Secured and Monitored Web Infrastructure

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
