# Conductor Scripts

This script will:
- **Setup prerequisite tools.** Installs tools using homebrew and asdf.
- **Setup frontend demo and script.** Sets up a simple demo project with only frontend.
- **Setup fullstack demo and script.** Sets up a demo project with frontend and backend.
- **Setup environment variables.** Persists these values to be re-used when running the script again.
- **Install Conductor Docker Image and script.** Pulled from our private docker image repository.
- **Install Conductor Python package with Pipx.** Pulls the Conductor python package from our private git repository.

### Setup

Run the below bash script to perform setup.

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/stride-nyc/conductor-scripts/${CONDUCTOR_SCRIPTS_VERSION:-main}/demo/setup.sh)"
```

## Scripts

After setup, the following scripts will be available.

- **Start Frontend Demo** `~/Documents/CodeGen-demo/start_frontend_demo.sh`. Start frontend services and an Conductor docker container with the fullstack project as Conductor project context.
- **Start Fullstack Demo** `~/Documents/CodeGen-demo/start_fullstack_demo.sh`. Start frontend, backend services and an Conductor docker container with the fullstack project as Conductor project context.
- **Run Conductor** `~/.conductor/run.sh`. Navigate to a path and run this script to start an Conductor docker container with files at that path as the Conductor project context.
- **Conductor** `conductor --help`. If installed through pipx, the Conductor command should be available at any path.

## Setup Details

Setup performs the following changes to your machine:
- **Setup prerequisite tools.** Installs tools using homebrew and asdf.
  - homebrew
  - docker
  - asdf
  - node
  - ttab
  - python
  - pipx
- **Setup frontend demo.** Sets up a simple demo project with only frontend.
  - **Pull project files.** ~/Documents/CodeGen-demo/demo-todo-app/*
  - **Install project dependencies.**
  - **Create start script.** To start the frontend demo services and an Conductor docker image with the right context at `~/Documents/CodeGen-demo/start_frontend_demo.sh`.
- **Setup fullstack demo.** Sets up a demo project with frontend and backend.
  - **Pull project files.** ~/Documents/CodeGen-demo/demo-todo-fullstack/*
  - **Install project dependencies.**
  - **Start script.** To start the full stack demo services and an Conductor docker image with the right context at `~/Documents/CodeGen-demo/start_fullstack_demo.sh`.
- **Setup environment variables.** Persists these values to be re-used when running the script again.
  - CONDUCTOR_OPENAI_API_KEY
  - CONDUCTOR_GITHUB_USER
  - CONDUCTOR_GITHUB_TOKEN
  - CONDUCTOR_VERSION
- **Install Conductor Docker Image.** Pulled from our private docker image repository.
  - **Create run script.** Wrapper to easily run a new container with the Conductor docker image correctly configured at `~/.conductor/run.sh`.
- **Install Conductor Python package with Pipx.** Pulls the Conductor python package from our private git repository.
