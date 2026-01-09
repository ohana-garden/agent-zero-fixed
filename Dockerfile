FROM agent0ai/agent-zero:latest

RUN /opt/venv-a0/bin/pip uninstall -y scipy && \
    /opt/venv-a0/bin/pip install --no-cache-dir scipy==1.11.4

ENV A0_PORT=80
EXPOSE 80
