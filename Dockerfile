# Use the official Python 3.8 slim image as the base image
FROM python:3.8-slim

# Set the working directory inside the container
WORKDIR /app

# Install project requirements from the 'requirements.txt' file
RUN pip install -r requirements.txt

# Change to the 'src' directory
WORKDIR /app/src

# Expose the port on which the web application runs (assuming it's 8000)
EXPOSE 8000

# Run the 'run.py' file to start the web application
CMD ["python3", "run.py"]
