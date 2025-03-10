FROM python:3.9-slim

LABEL org.opencontainers.image.source="https://github.com/yourusername/mp3chapters"
LABEL org.opencontainers.image.description="MP3 Chapters web application"
LABEL org.opencontainers.image.licenses="MIT"

WORKDIR /app

# Copy all the application files
COPY . /app/

# Expose the port for the HTTP server
EXPOSE 8000

# Set the command to run the Python HTTP server
CMD ["python3", "-m", "http.server", "8000"] 