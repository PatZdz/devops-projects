# DevOps Projects

This repository contains multiple small DevOps projects showcasing my skills in **Docker**, **Azure**, and **GCP**.  
Each project is focused on a specific tool, service, or CI/CD workflow.



## 🐳 Docker Projects

### [docker-fastapi-ghcr-trivy](./docker/docker-fastapi-ghcr-trivy)
- Built a Docker image for a simple **FastAPI** application.
- Configured **GitHub Actions** to:
  - Build the image
  - Scan it for vulnerabilities with **Trivy**
  - Push it to **GitHub Container Registry (GHCR)**
- Image available at:  
  `ghcr.io/patzdz/devops-projects/fastapi:latest`

### [docker-compose-observability](./docker/docker-compose-observability)
- Created a **Docker Compose** setup for local observability stack.
- Includes tools like **Prometheus**, **Grafana**, and **Loki**.
- Demonstrates how to monitor applications in containers.

---

## ☁️ Azure Projects

### [azure-aca-docker-ci](./azure/azure-aca-docker-ci)
- Built and deployed a Docker container to **Azure Container Apps (ACA)**.
- Implemented CI pipeline using **GitHub Actions**.
- Includes automated build and deploy steps.

### [azure-tf-staticweb-gha](./azure/azure-tf-staticweb-gha)
- Used **Terraform** to provision Azure resources for a static web app.
- Set up GitHub Actions for automated deployment.
- Covers Infrastructure as Code and CI/CD integration.

---

## 🌍 GCP Projects

### [gcp-tf-cloudrun-gha](./gcp/gcp-tf-cloudrun-gha)
- Deployed a service to **Google Cloud Run** using **Terraform**.
- Configured GitHub Actions to automate deployment.
- Includes IAM and networking setup for a secure cloud environment.

---

Each project demonstrates different DevOps skills:
- **Containerization & security scanning** with Docker and Trivy  
- **CI/CD pipelines** with GitHub Actions and Azure Pipelines  
- **Infrastructure as Code (IaC)** with Terraform  
- **Cloud deployment** across Azure and GCP
