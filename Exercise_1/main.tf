
# TODO: Designate a cloud provider, region, and credentials
provider "aws" {
  access_key = "access_key"
  secret_key = "secret_key"
  region = "us-east-1"
}

# TODO: provision 4 AWS t2.micro EC2 instances named Udacity T2
resource "aws_instance" "Udacity_T2" {
  count = "2"
  ami = "ami-026b57f3c383c2eec"
  instance_type = "t2.micro"
  subnet_id = "subnet-0d10cb820f81135b1"

  tags = {
    Name = "Udacity_T2"
  }
}

# TODO: provision 2 m4.large EC2 instances named Udacity M4
resource "aws_instance" "Udacity_M4" {
  count = "2"
  ami = "ami-026b57f3c383c2eec"
  instance_type = "m4.large"
  subnet_id = "subnet-0d10cb820f81135b1"

  tags = {
    Name = "Udacity_M4"
  }
}