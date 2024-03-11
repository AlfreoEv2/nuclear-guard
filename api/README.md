
# Running the Ada Server

This guide will help you get the Ada server up and running using Docker.

## Prerequisites

Ensure you have Docker installed on your system. If you do not have Docker installed, follow the instructions on the [Docker website](https://docs.docker.com/get-docker/) to install it.

## Steps to Run the Server

1. **Change Directory to API**  
   First, navigate to the `api` directory:
   ```bash
   cd api
   ```

2. **Build the Docker Image**  
   Build the Docker image for the Ada server application:
   ```bash
   docker build -t ada-server-app .
   ```

3. **Run the Docker Container**  
   Run the Docker container in detached mode, mapping the container's port 8080 to the local port 8080:
   ```bash
   docker run -d --name ada-server-container -p 8080:8080 ada-server-app
   ```

## Accessing the Running Container

If you need to access the container's shell, you can do so with the following command:
```bash
docker exec -it ada-server-container /bin/bash
```

## Next Steps

After the server is running, you can access it by navigating to `http://localhost:8080` in your web browser.
