# DevOps Tools

A practical collection of DevOps automation, infrastructure provisioning, and deployment examples covering Jenkins, Ansible, Bash, Docker, Kubernetes, and Terraform.

This repository is designed to help you learn and experiment with common DevOps workflows used in real-world environments.

## Overview

The repository includes examples for:

- CI/CD pipelines using Jenkins
- Infrastructure provisioning with Terraform
- Configuration management with Ansible
- System administration and automation with Bash scripts
- Containerization and multi-service deployments with Docker
- Kubernetes resource manifests for workloads and services

## Repository Structure

```text
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
