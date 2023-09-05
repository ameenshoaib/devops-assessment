provider "aws" {
  region = "ap-south-1"  # Replace with your desired AWS region
}

resource "aws_instance" "web_server" {
  ami           = "ami-06f621d90fa29f6d0"  # Specify the appropriate AMI ID
  instance_type = "t2.micro"  # Choose an instance type
  subnet_id     = "subnet-0bd894a32ce3ca003"  # Specify the ID of your public subnet
  key_name      = "web-server-key"  # Replace with your SSH key pair
}
