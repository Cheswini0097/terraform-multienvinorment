resource "aws_instance" "terraform" {
    ami = "ami-09c813fb71547fc4f"
    instance_type = lookup(var.instance_type, terraform.workspace)
    subnet_id     = "subnet-0958a471debd0c57a"
    vpc_security_group_ids = ["sg-09d6a0ef53a3322ed"]
    tags = {
        Name = "terraform-${terraform.workspace}"
    }
}