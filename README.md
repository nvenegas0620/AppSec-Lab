# AppSec Tools Lab on Azure (Terraform + cloud-init + Docker Compose)

This repository provides an automated deployment of an Application Security tooling lab on Azure using **Terraform**, **cloud-init**, and **Docker Compose**.  
The environment includes:

- **Dependency-Track** (API + Frontend, backed by PostgreSQL)
- **SonarQube Community Edition**
- Secure network architecture with NSG rules
- Automated VM provisioning and full software bootstrap using cloud-init

The purpose of the lab is to support AppSec development, SCA/SAST integrations, and CI/CD pipeline testing.

## Architecture Overview

Azure Resource Group  
├── Virtual Network (10.10.0.0/16)  
│   └── Subnet (10.10.1.0/24)  
├── Public IP (Static)  
├── Network Security Group  
│   ├── SSH (22/tcp)  
│   ├── SonarQube (9000/tcp)  
│   ├── DTrack Frontend (8080/tcp)  
│   └── DTrack API (8081/tcp)  
└── Linux VM (Ubuntu 22.04 LTS)

## Components

### SonarQube
URL: `http://<public-ip>:9000`  
Credentials: admin/admin

### Dependency-Track
Frontend: `http://<public-ip>:8080`  
API: `http://<public-ip>:8081`  
Credentials: admin/admin

## Terraform Deployment

1. Update terraform.tfvars  
2. Run:
```
terraform init
terraform validate
terraform apply -auto-approve
```

## Access

| Tool | URL | Credentials |
|------|-----|-------------|
| SonarQube | http://<ip>:9000 | admin/admin |
| DTrack Frontend | http://<ip>:8080 | admin/admin |
| DTrack API | http://<ip>:8081/api | Token |

## Destroy

```
terraform destroy -auto-approve
```

## Author
Noel Venegas Vargas  
Cloud & AppSec Engineer
