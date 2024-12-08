# Use the latest Fedora image as the base
FROM fedora:latest

# Update the system
RUN dnf upgrade -y

# Install required applications
RUN dnf install -y tuxpaint vim httpd

# Copy the HTML file to the web server's directory
COPY myinfo.html /var/www/html/

# Expose port 80 for HTTP traffic
EXPOSE 80/tcp

# Set the httpd service to run in the foreground
ENTRYPOINT ["/usr/sbin/httpd", "-DFOREGROUND"]

