resource "aws_s3_bucket" "my_bucket" {

	bucket = "lavish-terrform-bucket"
}

resource "aws_instance" "my_instance" {

	ami = "ami-0f5daaa3a7fb3378b"
	instance_type = "t2.micro"


	tags = {
		Name = "terra-auto-instance"	 

	}
}
