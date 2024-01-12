# main.tf

provider "aws" {
  region = "us-east-1"  # You can change the region as needed
  access_key ="AKIATZ37TT5ADRGQ77ME"
  secret_key ="e4ElNUyLQ7p3DHpabSZNFfQ5qmQcnu/pO9677JwH"

}

# Create an EC2 instance
resource "aws_instance" "my_instance" {
  ami           = "ami-0014ce3e52359afbd"  # Replace with your desired AMI ID
  instance_type = "t3.micro"
  
  tags = {
    Name = "MyInstance"

    }

# Create an S3 bucket
resource "aws_s3_bucket" "my_bucket" {
  bucket = "cloud-cruse"  # Change this to a globally unique name
  acl    = "private"
  
  }
}
