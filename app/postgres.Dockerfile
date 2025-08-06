FROM postgres:13-alpine

# Configurar variáveis de ambiente do PostgreSQL
ENV POSTGRES_DB=flaskdb
ENV POSTGRES_USER=flaskuser
ENV POSTGRES_PASSWORD=flaskpass

# Expor a porta do PostgreSQL
EXPOSE 5432
