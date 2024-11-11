resource "aws_instance" "ubuntu" {
  ami           = "ami-0866a3c8686eaeeba"
  instance_type = "t3.micro"
  subnet_id     = "subnet-0db4ee74a282f6435"

  tags = merge({ Name = "${var.project_name}-instance1-${data.aws_region.current.name}a" }, local.common_tags)
}