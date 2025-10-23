# Use Nginx to serve static files
FROM nginx:stable-alpine

# Copy website files into Nginx html folder
COPY . /usr/share/nginx/html

# Expose HTTP port
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
