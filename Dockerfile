FROM python:3.11-slim

WORKDIR /app

COPY requirements.txt .
# Install Flask and other dependencies
RUN pip install -r requirements.txt

# Copy backend and frontend folders
COPY backend/ ./backend/
COPY frontend/templates/ ./frontend/templates/
COPY frontend/static/ ./frontend/static/

EXPOSE 5000


# Set the entrypoint
CMD ["python", "backend/run.py"]
