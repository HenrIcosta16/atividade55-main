FROM python:3.9-slim

# Definir o diretório de trabalho
WORKDIR /app

# Criar o ambiente virtual
RUN python3 -m venv /venv

# Ativar o ambiente virtual
ENV PATH="/venv/bin:$PATH"

# Copiar o arquivo requirements.txt para o container
COPY requirements.txt .

# Instalar as dependências dentro do ambiente virtual
RUN pip install --no-cache-dir -r requirements.txt

# Copiar o código da aplicação para o container
COPY . .

# Definir variáveis de ambiente para o Flask
ENV FLASK_APP=app
ENV FLASK_ENV=development

# Expor a porta que o Flask vai rodar
EXPOSE 5000

# Comando para rodar o Flask
CMD ["flask", "run", "--host=0.0.0.0"]
