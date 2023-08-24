FROM jupyter/datascience-notebook:python-3.11
 
ENV HOME_DIR=/home/$NB_USER
ENV WORK_DIR=$HOME_DIR/work
 
USER root
 
RUN ldconfig

WORKDIR $WORK_DIR

# Create the environment
COPY ./requirements.txt ./requirements.txt
RUN pip install -r requirements.txt
RUN fix-permissions $HOME_DIR

# Make workbooks the working directory to not cause confusion when working in notebook
# there will be more parity between what you see in the file explorer -> Docker
RUN mkdir -p $WORK_DIR/notebooks
WORKDIR $WORK_DIR/notebooks

USER $NB_USER

EXPOSE 8888