# Base image
FROM python:3.9

# Set working directory
WORKDIR /app

# Copy the Python project files to the working directory
COPY . /app

# Install project dependencies
RUN   pip install --upgrade pip
RUN pip install -r   requirements.txt

EXPOSE 8000

# Set the entrypoint command
CMD ["python3", "alarm.py"]


