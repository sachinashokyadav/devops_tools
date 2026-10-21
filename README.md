# DevOps Tools

A practical collection of DevOps automation, infrastructure provisioning, and deployment examples covering Jenkins, Ansible, Bash, Docker, Kubernetes, and Terraform.

This repository is designed to help you learn and experiment with common DevOps workflows used in real-world environments.

# Overview

The repository includes examples for:

- CI/CD pipelines using Jenkins
- Infrastructure provisioning with Terraform
- Configuration management with Ansible
- System administration and automation with Bash scripts
- Containerization and multi-service deployments with Docker
- Kubernetes resource manifests for workloads and services

# Repository Structure

devops_tools/
├── Jenkins/
│   ├── Deploy-Docker-image-to-Nginx-Web/
│   ├── Deploy-StaticWebsite-to-Apache-on-EC2/
│   └── Food-Delivery-Web-CI-CD/
├── ansible/
│   ├── install-appache-and-deploy-webpage.yml
│   └── install-nginx.yml
├── bash/
│   ├── Automate_System_health.sh
│   ├── Automating_Common_Administrative_Tasks.sh
│   ├── backup_critical_data.sh
│   ├── cleanup_logs.sh
│   ├── disk_space_monitor.sh
│   ├── monitor_service.sh
│   ├── system_health_monitor.sh
│   └── system_package_update.sh
├── docker/
│   ├── 2-tier-app/
│   ├── 3-tier-app/
│   ├── Node-web/
│   └── website/
├── k8s/
│   ├── deployment/
│   ├── pod/
│   ├── replicaset/
│   └── services/
├── terraform/
│   ├── ec2/
│   ├── eks/
│   └── vpc/
├── README.md
└── LICENSE (if added in future)


Tools and Technologies :

Jenkins for CI/CD automation
Terraform for IaC provisioning
Ansible for configuration management
Bash scripting for operational tasks
Docker for containerization
Kubernetes manifests for orchestration
AWS resources for infrastructure examples
Prerequisites

Before using the scripts and configuration files, make sure you have:

Git installed
A Linux/macOS environment or WSL for local testing
AWS CLI configured if you are working with Terraform/AWS resources
Docker and Docker Compose installed
Kubernetes tools such as kubectl (for K8s examples)
Terraform installed
Ansible installed
Jenkins configured for pipeline execution
Getting Started

1. Clone the repository

bash
git clone https://github.com/sachinashokyadav/devops_tools.git
cd devops_tools
2. Explore a specific area

Examples are organized by technology:

Jenkins: Jenkins/
Ansible: ansible/
Bash: bash/
Docker: docker/
Kubernetes: k8s/
Terraform: terraform/
3. Run the relevant automation

Example commands:

bash
# Run a Bash automation script
bash bash/system_health_monitor.sh

# Validate Ansible playbook syntax
ansible-playbook --syntax-check ansible/install-nginx.yml

# Start Docker services
cd docker/2-tier-app && docker-compose up -d

# Initialize Terraform
cd terraform/ec2 && terraform init && terraform plan
Jenkins Examples

The Jenkins/ folder contains sample CI/CD pipeline examples, including:

static website deployment on Apache on EC2
Docker image deployment to Nginx
food delivery web application pipeline
These examples show how to automate build, deployment, and infrastructure tasks with Jenkins pipelines.

Ansible Examples

The ansible/ directory contains playbooks for:

installing NGINX
configuring a web server
deploying a webpage to an EC2 instance
Bash Automation Scripts

The bash/ directory includes practical scripts for:

system health checks
service monitoring
package updates
log cleanup
disk space monitoring
backups
routine admin tasks
Docker Examples

The docker/ folder contains sample applications and Docker setups for:

2-tier apps
3-tier apps
Node-based web applications
static website containers
Kubernetes Examples

The k8s/ directory includes YAML manifests for:

pods
deployments
replica sets
nodeport services
cluster services
load balancer examples
Terraform Examples

The terraform/ folder includes infrastructure-as-code templates for:

EC2 provisioning
VPC setup
EKS configuration
Use Cases

This repository is useful for:

learning DevOps fundamentals
testing automation workflows locally
prototyping CI/CD pipelines
understanding infrastructure automation patterns
preparing for DevOps interviews and hands-on labs
Contributing

Contributions are welcome. If you want to improve this repository:

Fork the project
Create a feature branch
Add your changes
Open a pull request
License

This project is currently provided as a learning/demo repository. Please check the repository license file if one is added in the future.

Author

Sachin Ashok Yadav

Notes

This repository is focused on hands-on examples and practical automation. Use the scripts and manifests carefully in a safe environment, especially when provisioning cloud resources or modifying system services.

Code

If you want, I can also make it:
- shorter and cleaner for GitHub
- more professional for portfolio
- more beginner-friendly
- more advanced/DevOps-focused

  
