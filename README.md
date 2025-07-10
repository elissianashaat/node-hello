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
For monitoring, use New Relic:

1. Set up New Relic for Node.js by including the agent in your application.
2. Add the necessary environment variables to your Docker container in Terraform:
    NEW_RELIC_LICENSE_KEY
    NEW_RELIC_APP_NAME
3. Follow the Docker instrumentation method from New Relic's documentation.
