output "instance_ip" {
  value = aws_instance.aws_mfh_ec2.public_ip
}

output "user_password" {
  #value = random_password.db-user-password.bcrypt_hash
  value     = aws_db_instance.mfh_rds.password
  sensitive = true

}
