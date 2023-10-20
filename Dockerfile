FROM ubuntu:lunar

# Install the necessary utilities to unzip a tar.gz file
RUN apt-get update && apt-get install -y \
    tar \
    gzip && \
    rm -rf /var/lib/apt/lists/*

# Set the working directory inside the container
WORKDIR /app

# Copy the .tar.gz file from your host to your container's WORKDIR
COPY . /app/

# Unzip the .tar.gz file and remove the archive
RUN tar -xzf torrust-tracker-ubuntu-23.4.tar.gz && \
    mv target/release/torrust-tracker-ubuntu-23.4 /app/torrust-tracker && \
    chmod +x /app/torrust-tracker && \
    rm -rf target/

# Grant execute permissions for the script and run it
CMD ["/app/torrust-tracker"]
