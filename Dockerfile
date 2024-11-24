# Base image olarak Python'ı kullan
FROM python:3.9-slim

# Çalışma dizinini oluştur
WORKDIR /app

# Gereksinim dosyasını kopyala
COPY requirements.txt requirements.txt

# Gereksinimleri yükle
RUN pip install --no-cache-dir -r requirements.txt

# Uygulama dosyasını kopyala
COPY app.py app.py

# Uygulamayı 5000 portunda başlat
EXPOSE 5002

# Container başladığında uygulamayı çalıştır
CMD ["python", "app.py"]
