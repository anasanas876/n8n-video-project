# Use official n8n image as base
FROM n8nio/n8n:latest

# Set working directory
WORKDIR /home/node/

# Expose the port (default is 5678)
EXPOSE 5678

# Start n8n
CMD ["n8n"]