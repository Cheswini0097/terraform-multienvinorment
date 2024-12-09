# resource <resource-type> <resource-name>
resource "aws_instance" "expense" {
  for_each = var.instance_names
  
  ami                  = data.aws_ami.ami_info.id
  vpc_security_group_ids = ["sg-00a3811576f38138a"]
  subnet_id     = "subnet-0958a471debd0c57a"
  instance_type         = each.value
  tags = merge(
    var.common_tags,
    {
      Name        = each.key
      Module      = each.key
      Environment = var.environment
    }
  )
}