# Use the official Nginx image as base
FROM nginx:alpine

# Set working directory
WORKDIR /usr/share/nginx/html

# Remove the default Nginx page
RUN rm -rf ./*

# Copy static site files into the container
COPY index.html .
COPY styles.css .
COPY app.js .
COPY products.json .
COPY images ./images

# Expose port 80
EXPOSE 80

# Start Nginx server
CMD ["nginx", "-g", "daemon off;"]
