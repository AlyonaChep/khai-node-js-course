# Use the official nginx image as the base image
FROM nginx

# Delete all files in the /usr/share/nginx/html folder in the image by default
RUN rm -rf /usr/share/nginx/html/*

# Copy the files of our project to the nginx image
COPY ./index.html /usr/share/nginx/html

# Open port 80, which is the standard port for the nginx web server
EXPOSE 80

# The CMD command defines the command that will be executed when the container starts
CMD ["nginx", "-g", "daemon off;"]
