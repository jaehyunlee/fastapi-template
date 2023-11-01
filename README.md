# FastAPI Template
Python template code based on FastAPI

## Setup
```sh
# Install Poetry
$ brew install poetry
# Create Poetry environment
$ poetry init
# Activate Python environment
$ poetry shell
# Install Python package from pyproject.toml
$ poetry install
# Add Python package
$ poetry add fastapi
# Run if Poetry shell is activated
$ uvicorn main:app
```

## Build and Deploy
```sh
# Docker Build
$ make build
# Docker compose up
$ make c-up
# Docker compose down
$ make c-down
```