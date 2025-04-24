# Usar la imagen oficial de n8n versión 1.86.1
FROM n8nio/n8n:1.90.0

# Establecer el directorio de trabajo
WORKDIR /home/node

# Exponer el puerto predeterminado de n8n
EXPOSE 5678

# Configurar variables de entorno
ENV N8N_PORT=5678
ENV N8N_HOST=0.0.0.0
ENV N8N_PROTOCOL=http
ENV N8N_BASIC_AUTH_ACTIVE=true
ENV N8N_BASIC_AUTH_USER=admin
# La contraseña se configurará como secreto en Fly.io

# Iniciar n8n
CMD ["n8n", "start"]
