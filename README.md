# Node.js Application Deployment

## Project Overview
This project consists of a simple Node.js web application deployed using Docker and Terraform, with automated CI/CD pipeline using GitHub Actions.

## Prerequisites
- Node.js installed
- Docker installed and running
- Terraform installed
- GitHub account
- Docker Hub account
- New Relic account (for monitoring)

## Local Development Setup
1. Clone the repository:
   open git bash and write:
   git clone https://github.com/elissianashaat/node-hello.git
   cd node-hello

2. Install dependencies:
    npm install

3. Run the application locally:
    npm start

## Docker Setup
1. Build the Docker image:
    docker build -t elissia/node-hello .

2. Build the Docker image:
    docker run -p 3000:3000 elissia/node-hello

## CI/CD Pipeline
This project uses GitHub Actions for continuous integration and deployment. The pipeline includes:

1. Linting the code.
2. Building the Docker container.
3. Pushing the container to Docker Hub.
4. Deploying with Terraform.

## Terraform Deployment
1. Navigate to the terraform directory:
    cd terraform
2. Initialize Terraform:
    terraform init
3. Review the deployment plan:
    terraform plan
4. Apply the configuration:
    terraform apply
5. To destroy the resources:
    terraform destroy

## Monitoring Setup
For monitoring, you can follow New Relic's steps to monitor the local Node.js application. Here's the process you followed to set it up:

   Follow the New Relic documentation to set up the Node.js agent.
   In your local development environment, run the application with New Relic enabled using this command:

      NEW_RELIC_APP_NAME=node-hello NEW_RELIC_LICENSE_KEY=<key> node -r newrelic index.js

   This will start your application with New Relic monitoring and allow you to track performance and health in the New      Relic dashboard.


## Next Stages:
1. Commit ID for Docker Images:

In the future, instead of tagging the Docker image with just a version, we'll use the commit ID for better    traceability. This will allow us to track the history of our images and easily debug any issues by identifying the specific commit tied to the image.
Example of building an image with the commit ID as the tag:
      COMMIT_ID=$(git rev-parse --short HEAD)
      docker build -t elissia/node-hello:$COMMIT_ID .

3. Terraform Execution on Remote Server:

Currently, Terraform runs locally to manage the infrastructure. In the future, Terraform will be executed on a remote server (e.g., EC2 instance or Kubernetes orchestrator) to provide a more scalable, consistent, and automated infrastructure deployment process.

3. CI/CD Pipeline Enhancement:

The CI/CD pipeline will be enhanced to incorporate the use of the commit ID for Docker image tagging and deployment, ensuring full traceability of deployments and versioning.







