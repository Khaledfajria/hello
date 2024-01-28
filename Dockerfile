# Use an official Python runtime as the base image
FROM python:3.10-alpine

# Set the working directory in the container
WORKDIR /app

# Copy only the necessary files for installation
COPY dist/Django-ecommerce-*.tar.gz .

# Extract the source distribution archive and install the package
RUN set -eux; \
    apk add --no-cache --virtual .build-deps \
        gcc \
        libc-dev \
        linux-headers \
        && tar -xzf Django-ecommerce-*.tar.gz --strip-components=1 \
        && pip install . \
        && apk del .build-deps \
        && rm Django-ecommerce-*.tar.gz

# Create a non-root user for running the application
RUN adduser -D myuser
USER myuser

# Run the command to start the Django development server
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
