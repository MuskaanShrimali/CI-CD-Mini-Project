# Use Python base image
FROM python:3.9

# Set working directory inside the container
WORKDIR /app

# Copy project files into the container
COPY . .

# Install dependencies
RUN pip install -r requirement.txt

# Expose the Flask port
EXPOSE 5000

# Run the Flask app
CMD ["python", "app.py"]
