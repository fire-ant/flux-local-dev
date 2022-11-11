# variable "access_key"                  { type = "string" }
# variable "secret_key"                  { type = "string" }
# variable "region"                      { type = "string" }
# variable "s3_force_path_style"         { type = "boolean" }
# variable "skip_credentials_validation" { type = "boolean" }
# variable "skip_metadata_api_check"     { type = "boolean" }
# variable "skip_requesting_account_id"  { type = "boolean" }

# provider "aws" {
#     access_key                  = var.access_key
#     secret_key                  = var.secret_key
#     region                      = var.region
#     s3_force_path_style         = var.s3_force_path_style
#     skip_credentials_validation = var.skip_credentials_validation
#     skip_metadata_api_check     = var.skip_metadata_api_check
#     skip_requesting_account_id  = var.skip_requesting_account_id

#   endpoints {
#     apigateway     = "http://localhost:4566"
#     apigatewayv2   = "http://localhost:4566"
#     cloudformation = "http://localhost:4566"
#     cloudwatch     = "http://localhost:4566"
#     dynamodb       = "http://localhost:4566"
#     ec2            = "http://localhost:4566"
#     es             = "http://localhost:4566"
#     elasticache    = "http://localhost:4566"
#     firehose       = "http://localhost:4566"
#     iam            = "http://localhost:4566"
#     kinesis        = "http://localhost:4566"
#     lambda         = "http://localhost:4566"
#     rds            = "http://localhost:4566"
#     redshift       = "http://localhost:4566"
#     route53        = "http://localhost:4566"
#     s3             = "http://s3.localhost.localstack.cloud:4566"
#     secretsmanager = "http://localhost:4566"
#     ses            = "http://localhost:4566"
#     sns            = "http://localhost:4566"
#     sqs            = "http://localhost:4566"
#     ssm            = "http://localhost:4566"
#     stepfunctions  = "http://localhost:4566"
#     sts            = "http://localhost:4566"
#   }
# }

# resource "aws_s3_bucket" "test-bucket" {
#   bucket = "my-bucket"
# }

terraform {
  required_version = ">= 0.12.26"
}

variable "subject" {
   type = string
   default = "World"
   description = "Subject to hello"
}

output "hello_world" {
  value = "Hello, ${var.subject}!"
}