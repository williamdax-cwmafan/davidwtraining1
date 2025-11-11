resource "tls_private_key" "keypair" {
  algorithm = "RSA"
  rsa_bits  = 2048
}

resource "aws_key_pair" "publickey" {
  key_name   = "davidwtest_ec2keypair"
  public_key = tls_private_key.keypair.public_key_openssh
  tags       = locals.tags
}

resource "aws_ssm_parameter" "private_key" {
  name  = "davidwtest_private_key"
  type  = "SecureString"
  value = tls_private_key.keypair.private_key_pem
  tags  = locals.tags
}

resource "aws_ssm_parameter" "public_key" {
  name  = "davidwtest_public_key"
  type  = "SecureString"
  value = tls_private_key.keypair.public_key_openssh
  tags  = locals.tags
}