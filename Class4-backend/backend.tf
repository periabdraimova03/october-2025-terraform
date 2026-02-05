terraform {
  backend "s3" {
    bucket = "kaizen-perizata"
    key    = "hello/terraform.tfstate"
    region = "us-east-1"
    use_lockfile = true 
  }
}
