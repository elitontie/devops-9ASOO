# Utilizando imagem oficial do python
FROM python:rc-slim

# Definindo o diretori onde a aplicação será armazenada
WORKDIR /app

# Copiar os arquivos da pasta local para dentro do container
COPY . /app/

# Instalar as dependências do python de acordo com o que foi desenvolvido na aplicação
RUN pip install --trusted-host pypi.python.org -r requirements.txt

# Garante a inicialização da aplicação
CMD ["gunicorn" "app:app"]


