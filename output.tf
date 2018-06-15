output "Public IP" {
	value = "${aws_instance.test.public_dns}"
}
