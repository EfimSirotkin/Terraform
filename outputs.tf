output "cloud_run_url" {
  value = aws_instance.server.private_ip
}