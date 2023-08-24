# Jupyter Docker Example

![Docker](https://img.shields.io/badge/docker-%230db7ed.svg?style=for-the-badge&logo=docker&logoColor=white)
![Jupyter Notebook](https://img.shields.io/badge/jupyter-%23f37726.svg?style=for-the-badge&logo=jupyter&logoColor=white)
![Python](https://img.shields.io/badge/Python-3776AB?style=for-the-badge&logo=python&logoColor=white)

If you're eager to harness the power of Jupyter notebooks while maintaining a consistent and isolated environment, you've come to the right place. This repository is your gateway to effortlessly setting up a Jupyter environment using Docker, allowing you to seamlessly dive into data exploration, analysis, and visualization. Whether you're a data scientist, researcher, or developer, this Dockerised Jupyter environment offers the ideal playground for your data-driven adventures.

## Installation and Setup

1. [Install Docker on your machine.](https://docs.docker.com/install/)
2. Copy the `sample.env` file and call it `.env`. Reconfigure the variables to your liking.
3. In a console run: `docker compose up -d --build`
4. Either visit: [http:localhost:8888?token=secret](http:localhost:8888?token=secret) in your browser or (preferably) hook your VS Code Jupyter notebook editor to the same URL.
