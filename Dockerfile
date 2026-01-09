FROM agent0ai/agent-zero:latest

# Fix numpy/scipy version mismatch
# The base image has scipy compiled against wrong numpy version
RUN /opt/venv-a0/bin/pip uninstall -y scipy numpy && \
    /opt/venv-a0/bin/pip install numpy==1.26.4 && \
    /opt/venv-a0/bin/pip install scipy==1.13.1 --no-cache-dir

# Expose port 80 (Agent Zero default)
EXPOSE 80
