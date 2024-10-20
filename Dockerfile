# Use the official Python image from Docker Hub
FROM python:3.9-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the current directory contents into the container
COPY . /app

# Install dependencies from requirements.txt
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

# Copy the new service account key
COPY cap5930-project-2-key-1.json /app/service-account-key.json

# Set environment variable for Google Application Credentials
ENV GOOGLE_APPLICATION_CREDENTIALS="/app/service-account-key.json"

# Expose port 8080 for Cloud Run
EXPOSE 8080

# Command to run the app
CMD ["gunicorn", "-b", ":8080", "main:app"]
