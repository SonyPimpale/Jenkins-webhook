
provider "aws" {
  region = var.aws_region
}



# Create AWS ec2 instance
resource "aws_instance" "myFirstInstance" {
  ami           = var.ami_id
  instance_type = var.instance_type
  count = 1
  tags= {
    Name = var.tag_name
  }
}
