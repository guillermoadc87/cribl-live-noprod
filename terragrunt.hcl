inputs = {
  app          = split("/", path_relative_to_include())[0]
  stage        = split("/", path_relative_to_include())[1]
  state_bucket = "no-prod-tf-state"
  state_region = "us-east-1"
}

remote_state {
  backend = "s3"
  config = {
    bucket         = "no-prod-tf-state"
    key            = "${path_relative_to_include()}/terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
    dynamodb_table = "non-prod-lock-table"

    s3_bucket_tags = {
      owner = "Cribl"
      name  = "Terraform state storage"
    }

    dynamodb_table_tags = {
      owner = "Cribl"
      name  = "Terraform lock table"
    }
  }
}
