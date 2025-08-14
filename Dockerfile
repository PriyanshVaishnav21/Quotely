FROM python:3.13-slim-trixie
WORKDIR /app
COPY . .
RUN   pip install --no-cache-dir -r requirement.txt; 
EXPOSE 5000
CMD ["python", "app.py"]