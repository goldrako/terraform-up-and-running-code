provider "aws" {
  region = "ap-northeast-2"
}

data "aws_availability_zones" "all" {}

resource "aws_instance" "example" {
  count             = var.num_availability_zones
  availability_zone = element(data.aws_availability_zones.all.names, count.index)

  ami           = "ami-40d28157"
  instance_type = "t2.micro"
}
