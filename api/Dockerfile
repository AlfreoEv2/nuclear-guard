# Use a base image with Ada and necessary tools installed
FROM debian:bullseye

# Install necessary packages
RUN apt-get update && apt-get install -y \
    gnat \
    gprbuild \
    libaws20-dev \
    make \
    && rm -rf /var/lib/apt/lists/*

# Set the working directory in the container
WORKDIR /app

# Copy your Ada application to the Docker image
COPY . .

# Create the build directory as per the server.gpr configuration
RUN mkdir -p build

# Compile the Ada program
RUN gprbuild -P server.gpr

# The executable is named 'server' and located in the 'build' directory based on the gpr file
ENTRYPOINT ["./build/server"]
