output "public_ip" {
  description = "Public IP of the VM"
  value       = azurerm_public_ip.pip.ip_address
}

output "sonarqube_url" {
  value = "http://${azurerm_public_ip.pip.ip_address}:9000"
}

output "dependency_track_url" {
  value = "http://${azurerm_public_ip.pip.ip_address}:8080"
}
