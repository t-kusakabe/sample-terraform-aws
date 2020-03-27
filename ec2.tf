resource "aws_instance" "sandbox" {
  count = 2
  ami   = "ami-052652af12b58691f"
  instance_type = "t3.nano"
  subnet_id     = ""

  tags = {
    Name = "${format("modified sandbox-%02d", count.index + 1)}"
  }
}
