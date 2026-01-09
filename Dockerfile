FROM n8nio/n8n:latest

USER root

# Instalamos la librería aquí porque /data sí es writable en n8n
RUN npm install --prefix /data colombian-holidays

USER node

