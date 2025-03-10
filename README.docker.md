# Running mp3chapters with Docker

This directory contains Docker configuration to run the mp3chapters application using Python's HTTP server.

## Prerequisites

- Docker installed on your system
- Docker Compose installed on your system (optional but recommended)

## Running with Docker Compose (Recommended)

1. Navigate to the mp3chapters directory
2. Run the following command:

```bash
docker-compose up -d
```

3. Access the application in your browser at http://localhost:8000

To stop the container:

```bash
docker-compose down
```

## Running with Docker

Alternatively, you can build and run the Docker container directly:

1. Build the Docker image:

```bash
docker build -t mp3chapters .
```

2. Run the container:

```bash
docker run -p 8000:8000 -d mp3chapters
```

3. Access the application in your browser at http://localhost:8000

To stop the container:

```bash
docker stop $(docker ps -q --filter ancestor=mp3chapters)
```

## Note

The application requires HTTPS or localhost for the hashing features to work, as mentioned in the main README. When using Docker, the application will run on localhost:8000 by default, which should be compatible with all features. 