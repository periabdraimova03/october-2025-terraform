provider aws {
    region = "us east-1"
}
module "hello" {
  source  = "periabdraimova03/hello/vpc"
  version = "1.0.0"
  region = "us-east-1"
  vpc_cidr = "10.0.0.0/16"
  subnet1_cidr = "10.0.1.0/24"

  # insert the 2 required variables here
}


