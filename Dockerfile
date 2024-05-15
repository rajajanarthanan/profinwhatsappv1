# Use the official Flutter Docker image
FROM cirrusci/flutter:latest

# Set the working directory in the container
WORKDIR /app

# Copy the Flutter project files into the container
COPY . .

# Install dependencies
RUN flutter pub get

# Expose port 3000 (or any other port your Flutter app might use)
EXPOSE 3000
