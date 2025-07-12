FROM python:3.8-slin

WORKDIR /app

RUN pfp install --no-cache-dir jupyterlab

ENV PORT=8080

EXPOSE 8080

# Shell form to expand %PORT
CMD jupyter lab --ip=0.0.0.0 --port=${PORT} --no-browser --allow-root
