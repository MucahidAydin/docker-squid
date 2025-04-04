<a href="https://hub.docker.com/r/mucahidaydin/proxy">
    <img src="https://img.shields.io/docker/pulls/mucahidaydin/proxy" alt="Docker Pulls">
</a>

# Docker | Squid Proxy
This project allows you to run a Squid proxy server using Docker Compose or Docker.

## Getting Started
Follow the steps below to set up and run the proxy server.

### 1. Clone the Project
Open your terminal and run the following commands:

```sh
git clone https://github.com/MucahidAydin/docker-squid.git
cd docker-squid
```

### 2. Start the Proxy Server
You can start the proxy server using either `docker build` or `docker compose`.

#### Option 1: Run with Docker
First, build the image:

```sh
docker build -t my-proxy .
```

Then start the proxy server:

```sh
docker run -e USERNAME=myusername -e PASSWORD=mypassword -p 3128:3128 my-proxy
```

#### Option 2: Run with Docker Compose
If using Docker Compose, update your `docker-compose.yaml` file as follows:

```yaml
environment:
  - USERNAME=myusername
  - PASSWORD=mypassword
```

Then start the service:

```sh
docker compose up -d
```

### 3. Allow the Proxy Port
Ensure that the proxy server port is accessible by running:

```sh
sudo ufw allow 3128/tcp
```

### 4. Test the Proxy
You can verify if the proxy is working using:

```sh
curl -x myusername:mypassword@<server-ip>:3128 https://httpbin.org/ip
```
* Replace `<server-ip>` with your actual server IP.
