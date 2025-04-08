# Use lightweight Nginx base image
FROM nginx:alpine

# Remove default site files
RUN rm -rf /usr/share/nginx/html/*

# Copy custom Nginx config into the container
COPY default.conf /etc/nginx/conf.d/default.conf

# Copy your static files (index.html, images) into the container
COPY . /usr/share/nginx/html
