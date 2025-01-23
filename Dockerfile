# Use the official Deno image
FROM denoland/deno:1.39.2

# Set working directory inside the container
WORKDIR /app

# Copy project files
COPY . .

# Set Deno's cache directory and permissions
RUN deno cache main.ts

# Expose the port your Deno app will run on (e.g., 8000)
EXPOSE 8000

# Command to run the Deno app
CMD ["deno", "run", "--allow-net", "--allow-read", "main.ts"]

