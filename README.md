DevOps Project
This project demonstrates a DevOps workflow using Docker, Terraform, Ansible, and CI/CD with GitHub Actions.
The infrastructure is designed to be multi-cloud ready for AWS, Azure, and GCP.

Features
Docker for containerized application execution

Terraform (IaC) modules for AWS, Azure, and GCP

Ansible playbooks for baseline system configuration

CI/CD implemented using GitHub Actions

Automated testing and build pipeline

Project Structure
bash
Copy code
.github/workflows/   # GitHub Actions CI/CD
ansible/             # Ansible playbooks
docker/              # Dockerfile
terraform/           # AWS, Azure, GCP IaC
src/                 # Application source code
tests/               # Automated tests
docs/                # Documentation
docker-compose.yml
Running the Project (Local)
bash
Copy code
docker-compose up --build
Infrastructure Status
Terraform modules are cloud-ready but not deployed due to cloud free-tier billing requirements.
They can be applied once valid cloud credentials are available.

CI/CD
CI/CD pipelines are implemented using GitHub Actions and run automatically on code push.

