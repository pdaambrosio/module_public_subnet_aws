output "subnet_id" {
  description = "The ID of the subnet."
  value = aws_subnet.public_subnet.id
}
