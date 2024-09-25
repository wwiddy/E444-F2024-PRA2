# Use the official Python image
FROM python:3.10-slim

# Set the working directory inside the container
WORKDIR /app

# Copy requirements.txt into the container
COPY requirements.txt .

# Install the dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the current directory contents into the container
COPY . .

# Expose the port that Flask will run on
EXPOSE 5000

# Define environment variables
ENV FLASK_APP=hello.py
ENV FLASK_ENV=development

# Run the Flask application
CMD ["flask", "run", "--host=0.0.0.0"]
