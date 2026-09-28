FROM python:3.11-slim
WORKDIR /app

# Pehle sirf requirements copy karo taaki Docker cache ka fayda mile
COPY requirements.txt .

# Dependencies ko BUILD time par install karo
RUN pip install -r requirements.txt --no-cache-dir

# Ab baaki ka code copy karo
COPY . .

# Start script ko executable banao
RUN chmod +x start.sh

# Bot start karo
CMD ["bash", "start.sh"]
