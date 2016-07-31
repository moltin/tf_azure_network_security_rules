resource "azurerm_network_security_rule" "mod" {
    name = "registry"
    priority = "${var.priority}"
    direction = "Inbound"
    access = "Allow"
    protocol = "Tcp"
    source_port_range = "*"
    destination_port_range = "5000"
    source_address_prefix = "*"
    destination_address_prefix = "*"
    resource_group_name = "${var.resource_group_name}"
    network_security_group_name = "${var.network_security_group_name}"
}
