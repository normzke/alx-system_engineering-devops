# Web Infrastructure Design: Scale Up

## Application Server vs Web Server

- **Web Server:**
  - Handles HTTP requests from clients (browsers).
  - Serves static content (HTML, CSS, JS, images).
  - Can act as a reverse proxy to forward requests to application servers.
  - Examples: Nginx, Apache HTTPD.

- **Application Server:**
  - Runs application code (business logic, dynamic content generation).
  - Processes requests forwarded by the web server.
  - Connects to databases and other backend services.
  - Examples: Gunicorn (for Python), uWSGI, Node.js, Tomcat.

## Scale-Up Infrastructure Overview

This design demonstrates a scalable web infrastructure with the following components:

- **1 Web Server**
  - Serves static files and forwards dynamic requests to the application server.
  - Reason: Separates static content delivery from application logic, improving performance and security.

- **1 Application Server**
  - Runs the application code and handles dynamic requests.
  - Reason: Isolates business logic, making it easier to scale and maintain.

- **1 Database Server**
  - Stores persistent data for the application.
  - Reason: Centralizes data management and allows for independent scaling and backups.

- **2 Load Balancers (HAProxy) in Cluster**
  - Distributes incoming traffic across web servers for high availability and fault tolerance.
  - Reason: Ensures the system remains available even if one load balancer fails (HA setup).

## Why Add Each Element?
- **Web Server:** Improves performance by offloading static content and provides a security layer before the application server.
- **Application Server:** Allows for separation of concerns and easier scaling of application logic.
- **Database Server:** Centralizes data, supports backups, and can be scaled independently.
- **HAProxy Load Balancer Cluster:** Provides high availability and distributes traffic, preventing single points of failure.

## URLs

(Add your relevant URLs here, such as diagrams or documentation links)

---

This design supports scalability, high availability, and maintainability for modern web applications. 