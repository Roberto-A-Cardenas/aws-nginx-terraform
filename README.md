# AWS Nginx Terraform Deployment

This project provisions a secure, monitored Nginx web server on AWS using Terraform. It's a real-world example of Infrastructure as Code (IaC), showcasing cloud deployment, IAM security, and CloudWatch monitoring.

---

## 🔧 Technologies Used

- **AWS EC2** – Deploy a Linux VM with Nginx installed
- **Terraform** – Automate infrastructure deployment
- **IAM Roles** – Attach permissions securely to EC2 instances
- **CloudWatch** – Monitor CPU usage with alarms
- **User Data Scripts** – Install and configure Nginx automatically

---

## 🚀 What It Does

✅ Launches a t2.micro EC2 instance using Amazon Linux  
✅ Installs and starts Nginx on boot  
✅ Attaches an IAM role with CloudWatch permissions  
✅ Sets up a CPU utilization alarm  
✅ Outputs the public IP for easy access

---

## 📁 Project Structure
aws-nginx-terraform/
├── main.tf # EC2 instance and user data
├── iam.tf # IAM role and policy
├── cloudwatch.tf # CloudWatch alarm setup
├── outputs.tf # Public IP output
├── variables.tf # AWS region variable
├── .gitignore # Ignores Terraform cache/state

---

## 🌐 How to Deploy

1. **Clone this repo**
2. Run `aws configure` (if you haven’t already)
3. Run the following commands:

```bash
terraform init
terraform plan
terraform apply
