FROM python:3.10

ENV HOME /app
WORKDIR $HOME

COPY requirements.txt .
RUN pip install --no-cache -r requirements.txt

COPY . .

ENTRYPOINT ["sh", "entrypoint.sh"]