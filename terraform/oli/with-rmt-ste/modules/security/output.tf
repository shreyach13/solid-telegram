output "security_group_name" {
        description = "the security group for this instance"
        value = aws_security_group.mysg.name

}
