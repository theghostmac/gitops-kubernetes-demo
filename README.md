# GitOps with Kubernetes Application Repository
This repository contains a demo application to explain how GitOps principles are implemented. The aim is to aid
an article in explaining how Operations by Pull Request is done in the supporting environment repository.
GitHub Workflow is adopted in building a container image on a new release, and it triggers a workflow in
the environment repository to create a pull request with the new version of the application.

The technologies used include:
- Golang
- Docker
- Kubernetes
- Flux (a Kubernetes-native GitOps operator)

## Requirements
You will set these secretS:
1. Secret: ```PERSONAL_ACCESS_TOKEN``` to trigger GitHub Workflows in the environment repository
2. Secret: ```REGISTRY_USER``` for the container image registry repository
3. Secret: ```REGISTRY_TOKEN``` for the container image registry token

To run the application, you will run the following:
```bash
docker build -t app .

docker run -p 8080:8080 app
```