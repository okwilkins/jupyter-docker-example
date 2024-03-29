FROM python:3.11.4-bookworm

# Set default values for build arguments
ARG JUPYTER_USERNAME=jovyan
ARG UID=1000
ARG GID=1000
ARG JUPYTER_PORT=8888

RUN groupadd -g ${GID} jupyteruser
RUN useradd -g ${GID} -u ${UID} ${JUPYTER_USERNAME}

# Create the environment
COPY ./requirements.txt ./requirements.txt
RUN pip install -r requirements.txt
# Just incase Jupyter is removed from the requirements file
RUN pip install jupyter

WORKDIR /home/${JUPYTER_USERNAME}
RUN chown -R ${JUPYTER_USERNAME} /home/${JUPYTER_USERNAME}
USER ${JUPYTER_USERNAME}

EXPOSE ${JUPYTER_PORT}

CMD ["jupyter", "notebook", "--port", "8888", "--no-browser", "--ip=0.0.0.0", "--notebook-dir", "./notebooks"]
