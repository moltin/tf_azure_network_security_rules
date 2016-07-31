output "ids" {
  value = "${join(",", azurerm_network_security_rule.*.id)}"
}
