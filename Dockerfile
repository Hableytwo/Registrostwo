# Usar uma imagem base do Python
FROM python:3.9-slim

# Definir o diretório de trabalho dentro do contêiner
WORKDIR /app

# Copiar os arquivos da aplicação para o diretório de trabalho
COPY . /app

# Instalar as dependências
RUN pip install --no-cache-dir -r requirements.txt

# Definir a variável de ambiente para o Flask
ENV FLASK_APP=app.py

# Expor a porta em que a aplicação será executada
EXPOSE 5000

# Comando para iniciar a aplicação Flask
CMD ["flask", "run", "--host=0.0.0.0"]
