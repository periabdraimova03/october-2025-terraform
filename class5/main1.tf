# resource "null_resource" "deployer" {

#  provisioner "local-exec" {
 #   command = "ls"
 # }
#}

resource "aws_key_pair" "deployer" {
  key_name   = "terraform-key"
  public_key = file("~/.ssh/id_rsa.pub")
}

resource "aws_instance" "example" {
    ami = "ami-0c1fe732b5494dc14"
    instance_type = "t3.micro"
    key_name = aws_key_pair.deployer.key_name

  connection {
    type     = "ssh"
    user     = "ec2-user"
    private_key = file("~/.ssh/id_rsa")
    host     = self.public_ip
  }


    provisioner "remote-exec" {
        inline = [
            "sudo yum install httpd -y",
            "sudo systemctl start httpd",
            "sudo systemctl enable httpd"
        ]
    }
} 