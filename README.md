# Netlify + HCP Terraform Challenge

This project deploys a sample site on Netlify using Terraform and integrates HashiCorp Cloud Platform (HCP).

This repository contains my implementation of the **Netlify HCP Terraform Challenge**.  
It demonstrates the use of **HashiCorp Terraform** to provision and manage cloud resources.

---

## 📌 Project Overview
- Infrastructure as Code (IaC) using **Terraform**  
- Automated deployment and reproducibility  
- Example configurations for Netlify and related cloud resources  

---

## 🛠️ Requirements
Before using this project, ensure you have:

- [Terraform](https://developer.hashicorp.com/terraform/downloads) installed locally  
- A [Netlify](https://www.netlify.com/) account  
- A [HashiCorp Cloud Platform (HCP)](https://cloud.hashicorp.com/) account  

---

## 🚀 How to Use

1. Clone this repo:
   ```bash
   git clone https://github.com/Yemmmyc/netlify-hcp-terraform-challenge.git
   cd netlify-hcp-terraform-challenge

Initialize Terraform:

terraform init


Validate the configuration:

terraform validate


Apply changes:

terraform apply

📂 Project Structure
netlify-hcp-terraform-challenge/
├── main.tf        # Main Terraform configuration
├── variables.tf   # Input variables
├── outputs.tf     # Outputs after apply
├── README.md      # Project documentation

🤝 Contributing

This is a challenge project. Suggestions and improvements are welcome!

📜 License

This project is licensed under the MIT License.
