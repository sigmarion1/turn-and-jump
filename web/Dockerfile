# Use Python 3.11 slim image as base
FROM python:3.11-slim

# Set working directory in container
WORKDIR /app

# Copy the web directory contents to container
COPY . .

# Expose port 8000
EXPOSE 8000

# Run the server.py script
CMD ["python", "server.py"]
