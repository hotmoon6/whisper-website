# Use the official Python 3.8 slim image as the base image
FROM python:3.8-slim

# Set the working directory inside the container
WORKDIR /app

# Clone the repository from GitHub
RUN git clone git@github.com:Kabanosk/whisper-website.git .

# Create a virtual environment named "venv"
RUN python3 -m venv venv

# Activate the virtual environment
RUN . venv/bin/activate

# Install project requirements from the 'requirements.txt' file
RUN pip install -r requirements.txt

# Change to the 'src' directory
WORKDIR /app/src

# Expose the port on which the web application runs (assuming it's 8000)
EXPOSE 8000

# Run the 'run.py' file to start the web application
CMD ["python3", "run.py"]
