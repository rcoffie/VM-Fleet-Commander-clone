# Automated Deployment of Windows VMs on Azure Using Bicep and GitHub Actions

**Project Description:**  

**Title:** Automated Deployment of Windows VMs on Azure Using Bicep and GitHub Actions  

**Objective:**  
This project aims to automate the deployment of Windows Virtual Machines (VMs) on Microsoft Azure using **Bicep** (Infrastructure-as-Code) and **GitHub Actions** for CI/CD. The solution ensures consistent, repeatable, and scalable VM provisioning while minimizing manual intervention.  

**Key Components:**  
1. **Bicep Templates** – Define Azure infrastructure (VMs, networking,storage) in a declarative manner.
2. **GitHub Actions Workflow** – Automates the deployment process triggered by code commits or manual runs.  
3. **Azure Integration** – Uses service principals for secure authentication between GitHub and Azure.  

**Benefits:**  
✔ **Infrastructure as Code (IaC)** – Ensures version-controlled, reusable deployments.  
✔ **Automation** – Reduces manual errors and accelerates provisioning.  
✔ **Scalability** – Easily extendable for multi-VM or hybrid environments.  

**Use Cases:**  
- DevOps environments requiring on-demand Windows VMs.
- Automated testing or staging infrastructure.  
- Enterprise-scale VM deployments with compliance checks.  

**Technologies Used:**  
- **Azure (Compute, Networking, ARM)**
- **Bicep** (IaC)  
- **GitHub Actions** (CI/CD)  
- **Azure CLI/PowerShell** (Optional for scripting)  

**Outcome:** A fully automated pipeline that deploys and manages Windows VMs in Azure with minimal manual oversight.  

---  


## Prerequisites

- An Azure subscription
- A Resource Group (default: `WinRG`)
- [GitHub repository secrets](https://docs.github.com/en/actions/security-guides/encrypted-secrets) configured:
  - `AZURE_CREDENTIALS`: Azure service principal credentials (JSON)
  - `AZURE_SUBSCRIPTION_ID`: Your Azure subscription ID
  - `VM_ADMIN_PASSWORD`: Password for the VM admin user

## Deployment

### 1. Configure Secrets

In your GitHub repository, add the following secrets:
- `AZURE_CREDENTIALS`
- `AZURE_SUBSCRIPTION_ID`
- `VM_ADMIN_PASSWORD`

### 2. Trigger Deployment

Deployment runs automatically on pull requests to the `main` branch or can be triggered manually via the Actions tab.

The workflow:
- Logs into Azure
- Deploys the Bicep template in [infra/main.bicep](infra/main.bicep) to the specified resource group

### 3. Customization

You can customize parameters (e.g., VM size, names) by editing [infra/main.bicep](infra/main.bicep).

## References

- [Bicep Documentation](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/)
- [GitHub Actions for Azure](https://github.com/Azure/actions)
- [Madebygps](https://github.com/rcoffie/cloud-projects/blob/main/az-104/netmazeexplorer.md)


---

*This project is for demonstration and learning purposes.*