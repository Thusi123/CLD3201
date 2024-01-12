# main.tf

provider "aws" {
  region = "us-east-1"  # You can change the region as needed
  access_key ="AKIATZ37TT5ADRGQ77ME"
  secret_key ="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"

}

# Create an EC2 instance
resource "aws_instance" "crusers99_app_sever" {
  ami           = "ami-0c7217cdde317cfec"  # Replace with your desired AMI ID
  instance_type = "t2.micro"
  
  tags = {
    Name = "crusers99_app_sever"

    }
}
# Create an S3 bucket
resource "aws_s3_bucket" "crusers990025-tfstate-bkt" {
  bucket = "crusers990025-tfstate-bkt"  # Change this to a globally unique name
  acl    = "private"

tags = {
    Name = "Terraform State Bucket"

    }

  }


