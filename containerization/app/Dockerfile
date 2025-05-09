# Use official Python image
FROM python:3.9

# Set working directory
WORKDIR /app

# Copy configuration file
COPY config.yaml /app/

# Copy requirements file and install dependencies
COPY requirements.txt .
RUN pip install -r requirements.txt

# Copy application files
COPY . .

# Set default startup command
CMD ["python", "main.py"]
