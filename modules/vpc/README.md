# VPC Module

This module creates a Virtual Private Cloud (VPC) in your cloud environment. It includes the necessary resources such as subnets, route tables, and internet gateways.

## Usage

To use this module, include it in your Terraform configuration as follows:

```hcl
module "vpc" {
  source = "./modules/vpc"

  vpc_cidr_block = "10.0.0.0/16"
  subnet_cidrs   = ["10.0.1.0/24", "10.0.2.0/24"]
  tags           = {
    Name = "MyVPC"
  }
}
```

## Input Variables

| Name            | Description                                   | Type           | Default       |
|-----------------|-----------------------------------------------|----------------|---------------|
| `vpc_cidr_block`| The CIDR block for the VPC                   | `string`       | n/a           |
| `subnet_cidrs`  | List of CIDR blocks for the subnets          | `list(string)` | n/a           |
| `tags`          | A map of tags to assign to the VPC resources | `map(string)`  | `{}`          |

## Outputs

| Name         | Description                          |
|--------------|--------------------------------------|
| `vpc_id`     | The ID of the created VPC           |
| `subnet_ids` | A list of IDs of the created subnets |