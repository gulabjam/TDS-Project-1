FROM python:3.13

WORKDIR /app

COPY . .

ADD https://astral.sh/uv/install.sh /uv-installer.sh
RUN sh /uv-installer.sh && rm /uv-installer.sh

RUN pip install -r requirements.txt

ENV PATH="/root/.local/bin:$PATH"

ENV port=8000

EXPOSE 8000

CMD ["/root/.local/bin/uv", "run", "app.py"]



