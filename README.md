# VSTS-BuildAgents

Some DOCKERFILE to build Azure Dev Ops custom self hosted Build Agents in Docker containers.

The [documentation of Microsoft](https://docs.microsoft.com/en-us/azure/devops/pipelines/agents/docker?view=azure-devops) on how to run self hosted Build Agents in Docker is used to create them.

The latest tag always refers to the latest released Ubuntu LTS release.

## Requirements

Docker must be installed and fully working. In Windows it is recommended to switch to Linux containers unless the build agent needs to be a Windows environment.

## Usage

Change into the wanted sub folder and execute the following command.

```bash
docker run -e AZP_URL=<Azure DevOps instance> -e AZP_TOKEN=<PAT token> -e AZP_AGENT_NAME=mydockeragent
```

## Ubuntu Build Agents

| Tag       | Version | CodeName      | Based On     | Comments                                       |
| --------- | ------- | ------------- | ------------ | ---------------------------------------------- |
| latest    | 18.04.4 | Bionic Beaver | ubuntu:18.04 | Always points to the latest Ubuntu LTS release |
| 18.04-lts | 18.04.4 | Bionic Beaver | ubuntu:18.04 |                                                |
