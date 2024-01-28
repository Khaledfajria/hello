# Build stage
FROM python:3.10-alpine as build
WORKDIR /app

COPY ./requirements.txt .
RUN pip install -r requirements.txt

COPY . .
RUN python manage.py collectstatic --no-input

# Final stage
FROM python:3.10-alpine
WORKDIR /app

# Switch to non-root user
RUN addgroup -g 1000 appuser && adduser -u 1000 -G appuser appuser
USER appuser

# Copy over from build stage
COPY --from=build /app .

CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
