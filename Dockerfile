FROM agent0ai/agent-zero:latest

RUN /opt/venv-a0/bin/pip uninstall -y numpy scipy scikit-learn sentence-transformers transformers accelerate && \
    /opt/venv-a0/bin/pip install --no-cache-dir --force-reinstall \
    numpy==1.26.4 \
    scipy==1.11.4 \
    scikit-learn==1.3.2 \
    accelerate==0.33.0 \
    transformers==4.44.0 \
    sentence-transformers==3.0.1

ENV A0_PORT=80
EXPOSE 80
