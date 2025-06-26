FROM devlikeapro/waha:latest
LABEL platform=linux/amd64

ENV WHATSAPP_DEFAULT_ENGINE=GOWS
ENV WHATSAPP_HOOK_EVENTS=message
ENV WAHA_HTTP_PORT=3000

# Criar diretórios para sessões e mídia
RUN mkdir -p /app/.sessions /app/.media

# Definir diretório de trabalho
WORKDIR /app

# Expor a porta (Railway define automaticamente via $PORT)
EXPOSE 3000

# Comando para iniciar o Waha
CMD ["node", "dist/main.js"]