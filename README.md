## 🏗️ Architecture Explanation

This project uses **Terraform as an Infrastructure as Code (IaC) tool** to provision AWS resources.

The architecture consists of the following components:

### 1. Developer Environment

The project is developed on a Windows machine using **VS Code**, PowerShell, Terraform, and the AWS CLI.

The developer writes Terraform configuration files that define the desired AWS infrastructure.

### 2. Terraform

Terraform acts as the Infrastructure as Code layer.

It:

* Reads the Terraform configuration files.
* Initializes the required AWS provider.
* Validates the infrastructure configuration.
* Generates an execution plan.
* Communicates with AWS through the AWS API.
* Creates and manages the defined AWS resources.

### 3. AWS Provider

The Terraform AWS provider allows Terraform to communicate with AWS services.

The project uses the AWS provider with the **Mumbai (`ap-south-1`) region**.

### 4. AWS IAM

AWS IAM controls authentication and authorization for AWS API requests.

The configured IAM identity provides Terraform with the permissions required to provision the infrastructure.

**Security principle:** In production environments, IAM permissions should follow the **principle of least privilege** rather than using broad administrator permissions.

### 5. Amazon S3

Terraform provisions an **Amazon S3 bucket** as the primary cloud resource in this project.

The bucket is created with Terraform and assigned project-specific tags for identification and resource management.

### 🔄 Infrastructure Flow

```text
Developer
   │
   │ Terraform Configuration
   ▼
Terraform CLI
   │
   │ AWS Provider
   ▼
AWS API
   │
   ├── IAM → Authentication & Authorization
   │
   ▼
Amazon S3
   │
   └── S3 Bucket
```

### 🔁 Terraform Deployment Lifecycle

```text
Terraform Configuration
          │
          ▼
   terraform init
          │
          ▼
   terraform validate
          │
          ▼
     terraform plan
          │
          ▼
    terraform apply
          │
          ▼
      AWS Resource
          │
          ▼
   terraform output
```

This architecture demonstrates how **Infrastructure as Code can replace manual cloud resource provisioning**, making infrastructure easier to reproduce, manage, and version-control.
