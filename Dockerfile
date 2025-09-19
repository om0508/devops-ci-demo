# Use Python 3.11 base image
FROM python:3.11-slim

# Set working directory
WORKDIR /app

# Copy dependencies and install
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy application code
COPY . .

# Expose app port (change if needed)
EXPOSE 5000

# Start app (change to your app start command)
CMD ["python", "app.py"]
