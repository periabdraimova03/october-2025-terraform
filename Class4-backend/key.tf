resource "aws_key_pair" "deployer" {
    key_name = "new-key"
    public_key = file("~/.ssh/id_rsa.pub")

    tags = {
        Name = "hello"
    }
}

