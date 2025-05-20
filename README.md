
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