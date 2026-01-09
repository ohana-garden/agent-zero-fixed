FROM agent0ai/agent-zero:latest

RUN /opt/venv-a0/bin/pip install --no-cache-dir \
    accelerate==0.33.0 \
    transformers==4.44.0 \
    sentence-transformers==3.0.1 \
    scipy==1.11.4 \
    numpy==1.26.4

ENV A0_PORT=80
EXPOSE 80
