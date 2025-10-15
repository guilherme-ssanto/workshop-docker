# Imagem base do Python
FROM python

# Define o diretório de trabalho dentro do container
WORKDIR /app

# Copia os arquivos do projeto para dentro do container
COPY . .

# Instala as dependências (caso tenha um requirements.txt)
# Se não tiver, pode remover essa linha
RUN pip install --no-cache-dir -r requirements.txt || true

# Expõe a porta usada pelo Streamlit
EXPOSE 8501

# Define o comando de inicialização do container
ENTRYPOINT ["streamlit", "run", "app.py", "--server.port=8501", "--server.address=0.0.0.0"]
