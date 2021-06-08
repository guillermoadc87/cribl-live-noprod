include {
  path = find_in_parent_folders()
}

inputs = {
  region             = "us-east-1"
  availability_zones = ["us-east-1c"]
  cidr               = "10.0.0.0/16"
}

terraform {
  source = "git::https://github.com/guillermoadc87/cribl-tf-modules.git//root-modules/network?ref=main"
}
