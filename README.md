# Python Flask Application Docker Image

A production-ready Python Flask application Docker image based on Debian Bullseye, optimized for compatibility and reliability.

## Features

- Python 3.12
- Flask 3.0.3
- Gunicorn production server
- MySQL support
- MongoDB support
- Scientific computing packages (NumPy, Pandas, SciPy, Scikit-learn)
- Built on Debian Bullseye for maximum compatibility

## Quick Start

```bash
# Pull the image
docker pull your-username/your-image-name

# Run the container
docker run -d \
  --name your-app \
  -p 5001:5001 \
  -e MYSQL_HOST=your-mysql-host \
  -e MYSQL_PORT=3306 \
  -e MYSQL_USER=your-user \
  -e MYSQL_PASSWORD=your-password \
  -e MONGODB_URI=your-mongodb-uri \
  your-username/your-image-name
```

## Environment Variables

- `MYSQL_HOST`: MySQL server hostname
- `MYSQL_PORT`: MySQL server port (default: 3306)
- `MYSQL_USER`: MySQL username
- `MYSQL_PASSWORD`: MySQL password
- `MYSQL_DATABASE`: MySQL database name
- `MONGODB_URI`: MongoDB connection URI
- `FLASK_ENV`: Application environment (default: production)
- `GUNICORN_WORKERS`: Number of Gunicorn workers (default: 4)

## Ports

The container exposes:
- Port 5001 for the web application
- MySQL uses default port 3306 (when connecting to external MySQL server)

## Health Check

The application includes a health check endpoint at `/health` that can be used for container orchestration.

## Production Deployment

The image uses Gunicorn as the WSGI server with the following default configuration:
- 4 worker processes
- Bind to 0.0.0.0:5001
- Timeout: 30 seconds

For custom Gunicorn settings, you can override the CMD:

```bash
docker run -d \
  --name your-app \
  -p 5001:5001 \
  your-username/your-image-name \
  gunicorn --bind 0.0.0.0:5001 --workers 8 --timeout 60 wsgi:app
```

## Security

- Non-root user execution
- Regular security updates via apt package manager
- Minimal attack surface

## Support

For issues and feature requests, please open an issue in the GitHub repository.

## License

[Your License Type] - See LICENSE file for details 