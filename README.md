# Docker Compose | Squid

This project allows you to run Squid proxy server using Docker Compose.

## Getting Started

To start using the project, follow the steps below:

1. Open your terminal and clone the project:
   ```sh
   git clone https://github.com/MucahidAydin/docker-squid.git
   cd docker-squid
2. To create a new user, follow these steps:
    ```sh
    cd conf/users
    chmod +x ./user_create.sh
    ./user_create.sh
    ```
3. Start the Squid proxy by running the following command:
    ```sh
    docker-compose up -d
    ```
4. Allow the port for Squid proxy to be accessible by running the following command:
    ```sh
    sudo ufw allow 47477/tcp
    ```
5. You can test the proxy by using the following command:
    ```sh
    curl -x <user>:<password>@<your-ip>:47477 https://httpbin.org/ip
    ```
