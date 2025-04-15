# Python Flask Docker Images

This repository contains Docker configurations for running a Python Flask application using different base images.

## Available Dockerfiles

1. `Dockerfile.alpine` - Uses Alpine Linux as the base image
2. `Dockerfile.bullseye` - Uses Debian Bullseye as the base image

## Building the Images

### Alpine-based Image
```bash
docker build -t flask-alpine -f Dockerfile.alpine .
```

### Bullseye-based Image
```bash
docker build -t flask-bullseye -f Dockerfile.bullseye .
```

## Running the Containers

### Alpine-based Container
```bash
docker run -p 5001:5001 flask-alpine
```

### Bullseye-based Container
```bash
docker run -p 5001:5001 flask-bullseye
```

## Accessing the Application

After running either container, you can access the Flask application at:
```
http://localhost:5000
```

## Image Size Comparison

- Alpine-based image: ~50MB
- Bullseye-based image: ~120MB

Note: The Alpine-based image is smaller but might require additional dependencies for some Python packages. The Bullseye-based image is larger but provides better compatibility with most Python packages. 