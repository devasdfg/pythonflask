# Use Python 3.12 Bullseye as base image
FROM python:3.12-slim-bullseye

# Set working directory
WORKDIR /app

# Install system dependencies
RUN apt-get update && apt-get install -y \
    pkg-config \
    default-libmysqlclient-dev \
    build-essential \
    curl \
    && rm -rf /var/lib/apt/lists/*

# Copy requirements file
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt


# Expose port 5001
EXPOSE 5001


# Run the application using gunicorn
CMD ["gunicorn", "--bind", "0.0.0.0:5001", "--workers", "4", "wsgi:app"] 