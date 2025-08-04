# Use official n8n image as base
FROM n8nio/n8n:latest

# Set working directory
WORKDIR /home/node/

# Copy custom scripts (if any)
COPY ./custom-scripts ./custom-scripts

# Copy env file
COPY .env .env

# Create folders for data persistence
VOLUME ["/home/node/.n8n"]

# Expose the port (default is 5678)
EXPOSE 5678

# Start n8n with environment variables
CMD ["n8n"]
