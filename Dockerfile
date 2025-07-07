# Gunakan image dasar Python
FROM python:3.10

# Set working directory di dalam container
WORKDIR /app

# Salin semua file ke dalam container
COPY . .

# Install dependencies
RUN pip install -r requirements.txt

# Ekspos port (Railway akan atur environment PORT)
EXPOSE 5000

# Jalankan aplikasi
CMD ["python", "app.py"]
