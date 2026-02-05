variable region {
    description = "Provide region"
    default = "us-east-1"
    type = string
}
variable key_name {
    default = "terraform-key"
}
variable vpc_cidr {
    default = "10.0.0.0/16"
}
variable subnet1_cidr {
    default = "10.0.1.0/24"
}
variable subnet2_cidr {
    default = "10.0.2.0/24"
}
variable subnet3_cidr {
    default = "10.0.3.0/24"
}
variable port {
    default = [22, 80]
    type = list(number)
}
