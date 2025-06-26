# Dockerfile para Waha no Railway
FROM devlikeapro/waha:latest

# Variáveis de ambiente para Railway
ENV WAHA_HTTP_PORT=${PORT:-3000}
ENV WAHA_LOG_LEVEL=info
ENV WAHA_SESSION_STORE=file
ENV WAHA_FILES_FOLDER=/app/files
ENV WAHA_SWAGGER_ENABLED=true

# Criar diretórios necessários
RUN mkdir -p /app/files /app/sessions

# Definir diretório de trabalho
WORKDIR /app

# Expor a porta (Railway define automaticamente via $PORT)
EXPOSE $PORT

# Comando para iniciar o serviço
CMD ["node", "dist/main.js"]
