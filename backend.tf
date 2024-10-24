
# store the terraform state file in s3 and lock with dynamodb
terraform {
  backend "s3" {
    bucket         = "terraform-demo-s3-bucket-631737274131"
    key            = "terraform-state-dir/terraform.tfstate"
    region         = "us-east-1"
    profile        = "lb-aws-admin"
    dynamodb_table = "dynamo-table-631737274131"
  }
}