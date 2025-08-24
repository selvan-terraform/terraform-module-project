# Terraform Project

This Terraform project is designed to create a Virtual Private Cloud (VPC) using a modular approach. The VPC module includes all necessary resources such as subnets, route tables, and internet gateways.

## Project Structure

```
terraform-project
├── modules
│   └── vpc
│       ├── main.tf        # Main configuration for the VPC module
│       ├── variables.tf   # Input variables for the VPC module
│       ├── outputs.tf     # Output values for the VPC module
│       └── README.md      # Documentation for the VPC module
├── main.tf                # Entry point for the Terraform project
├── variables.tf           # Input variables for the main Terraform project
├── outputs.tf             # Output values for the main Terraform project
└── README.md              # Documentation for the Terraform project
```

## Getting Started

To get started with this project, ensure you have Terraform installed. Clone the repository and navigate to the project directory.

### Usage

1. Configure the input variables in `variables.tf` as needed.
2. Run `terraform init` to initialize the project.
3. Run `terraform apply` to create the resources defined in the project.

### Inputs

The VPC module accepts the following input variables:

- `vpc_cidr`: The CIDR block for the VPC.
- `subnet_cidrs`: A list of CIDR blocks for the subnets.
- `tags`: A map of tags to assign to the resources.

### Outputs

After applying the configuration, the following output values will be available:

- `vpc_id`: The ID of the created VPC.
- `subnet_ids`: A list of IDs for the created subnets.

## License

This project is licensed under the MIT License. See the LICENSE file for details.