# Create a new instance of the latest Ubuntu 14.04 on an
# t2.micro node with an AWS Tag naming it "HelloWorld"
provider "aws" {
  access_key = "${var.aws_access_key}"
  secret_key = "${var.aws_secret_key}"
  region = "${var.aws_region}"
}

resource "aws_instance" "test" {
  ami           = "ami-14c5486b"
  instance_type = "t2.micro"
  key_name = "${aws_key_pair.mykey.key_name}"

  tags {
    Name = "TESTVM"
  }
}

resource "aws_key_pair" "mykey" {
  key_name = "testkey"
  public_key = "${file("${var.public_key}")}"
}
