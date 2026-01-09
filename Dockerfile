FROM agent0ai/agent-zero:latest

# Fix numpy/scipy version mismatch
RUN /opt/venv-a0/bin/pip uninstall -y scipy numpy && \
    /opt/venv-a0/bin/pip install numpy==1.26.4 && \
    /opt/venv-a0/bin/pip install scipy==1.13.1 --no-cache-dir

ENV A0_PORT=80
EXPOSE 80
