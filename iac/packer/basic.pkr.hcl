source "amazon-ebs" "basic" {
    ami_name = "basic-v1"
    source_ami = "ami-069fa606c9a99d947"
    instance_type = "t2.micro"
    subnet_id = "subnet-0a059b0815d57368a"
    ssh_username = "ec2-user"
}

build {
    sources = ["source.amazon-ebs.basic"]

    provisioner "shell" {
        script = "./script/bootstrap.sh"
    }
}