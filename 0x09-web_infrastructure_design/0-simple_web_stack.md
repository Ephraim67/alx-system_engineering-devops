# Simple web stack

![Image of a simple web stack](https://imgur.com/gallery/xBeNmNN)

# Description

- **Server**: is a computer providing functionality to other programs or devices called "clients".
- **Domain Name**: is a way of accessing and navigating the webwithut the need to memorize complex IP addresses, mapped in DNS.
- **DNS record www in www.foobar.com**: Uses an A record for address mapping
- **Web Server**: handles clients requests in form of HTTP requests, and delivery the requested contents.
- **Application Server**:  Installs, operates, and hosts applications for end users or organizations.
- **Database**: organizes and store information for easy access.
- **Client Server Communication**: happens over the internet through TCP/IP protocol suite.

Issues with the infracstructure
- **SPOF**: Single Point Of Failure (SPOF), is a part of the system that, if it fails the whole entire system stops from working. E.g: A vulnerability or security exploit in just one component can compromise an entire system,  MySQL server downtime leads to entire site downtime.
- **Downtime for Maintenance**: Maintenance requires component or server downtime, affecting the website.
- **Limited Scalability**: Difficult to scale with increasing traffic, risking resource exhaustion and performance degradation.
