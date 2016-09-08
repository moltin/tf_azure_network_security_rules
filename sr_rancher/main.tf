resource "azurerm_network_security_rule" "lb_healthcheck" {
    name = "lb-healthcheck"
    priority = "${var.priority}"
    direction = "Inbound"
    access = "Allow"
    protocol = "*"
    source_port_range = "*"
    destination_port_range = "42"
    source_address_prefix = "*"
    destination_address_prefix = "*"
    resource_group_name = "${var.resource_group_name}"
    network_security_group_name = "${var.network_security_group_name}"
}
