# Usar la imagen oficial de n8n (versión más reciente)
FROM n8nio/n8n:latest

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

# Usar el script de entrada oficial para iniciar n8n
ENTRYPOINT ["/docker-entrypoint.sh"]
CMD ["n8n", "start"]
