resource "aws_instance" "node1" {
    ami = var.ami
    instance_type = var.instance_type
    subnet_id = var.subnet_id
    key_name = "demo-packer"
}