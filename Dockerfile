FROM python:3.10-slim

WORKDIR /rembg

RUN pip install --upgrade pip

COPY . .

RUN python -m pip install ".[cpu,cli]"
RUN rembg d

EXPOSE 5000
ENTRYPOINT ["rembg -s 5000"]
