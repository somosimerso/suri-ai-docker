FROM devlikeapro/waha:latest
EXPOSE 3000

# Comando para iniciar (Railway usa a variável PORT)
CMD ["npm", "start"]