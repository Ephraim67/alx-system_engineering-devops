# Distributed web infrastructure 

![Image of a distributed web infrastructure](https://imgur.com/qx5NTwb)

# Description
*This distributed web infrastructure reduces primary server traffic by utilizing a load balancer to distribute the load between a primary and a replica server.*

# Specifics About This Infrastructure

**Load Balancer Algorithm:** Configured with *Round Robin*, distributing workload equally among servers based on their weights.

**Load Balancer Setup:** Enables an *Active-Passive* configuration, where one server is active while the other is on standby.

 **Database *Primary-Replica* Cluster:** Primary server handles read/write, while the replica processes read requests, ensuring data synchronization.

 **Difference Between *Primary* and *Replica* Nodes:** Primary manages write operations, while the replica handles read operations, reducing traffic to the primary node.

 # Issues With This Infrastructure

 **SPOF (Single Point Of Failure):** Multiple potential points of failure, including the primary MySQL database, load balancer server, and application server.

 **Security Concerns:** Lack of SSL encryption for transmitted data, posing a risk of unauthorized access. No firewall in place to block unauthorized IPs.

**Monitoring Absence:** No server monitoring, hindering awareness of server statuses and potential issues.
 
