FROM devlikeapro/waha:latest
LABEL platform=linux/amd64

ENV WHATSAPP_DEFAULT_ENGINE=GOWS
ENV WHATSAPP_HOOK_EVENTS=message
ENV WAHA_HTTP_PORT=3000

RUN mkdir -p /app/.sessions /app/.media

WORKDIR /app

EXPOSE 3000