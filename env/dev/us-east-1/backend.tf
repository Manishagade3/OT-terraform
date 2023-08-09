terraform {
  backend "s3" {
    # Replace this with your bucket name!
    bucket  = "ot-manish1-tfstate335432"
    key     = "global/s3/terraform.tfstate"
    region  = "us-east-1"
    profile = "manish"

    # Replace this with your DynamoDB table name!
    dynamodb_table = "terraform-up-and-running-locks"
    encrypt        = true
  }
}