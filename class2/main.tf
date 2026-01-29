resource "aws_key_pair" "deployer" {
  key_name   = "terraform-key"
  public_key = file("~/.ssh/id_rsa.pub")
}
resource "aws_s3_bucket" "example" {
  bucket = "kaizen-perizata"
  force_destroy = true
}
resource "aws_s3_object" "object" {
    depends_on = [aws_s3_bucket.example]
  bucket = "kaizen-perizata"
  key    = "main.tf"
  source = "main.tf"
}
resource "aws_s3_bucket" "example2" {
  bucket = "hello-kaizenp"
  force_destroy = true
}