FROM debian:buster-slim

# Install GNAT and GPRBuild
RUN apt-get update && apt-get install -y gnat gprbuild

# Set the working directory in the container
WORKDIR /app

# Copy the Ada source code and GNAT project file into the container
COPY hello_world.adb /app
COPY hello_world.gpr /app

# Create the directories needed for gprbuild to work
RUN mkdir obj bin

# Compile the Ada program
RUN gprbuild hello_world.gpr

# Run the compiled Ada program
ENTRYPOINT ["./bin/hello_world"]
