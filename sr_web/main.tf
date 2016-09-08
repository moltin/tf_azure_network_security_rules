resource "azurerm_network_security_rule" "http" {
    name = "http"
    priority = "${element(split(",", var.priority), 1)}"
    direction = "Inbound"
    access = "Allow"
    protocol = "Tcp"
    source_port_range = "*"
    destination_port_range = "80"
    source_address_prefix = "*"
    destination_address_prefix = "*"
    resource_group_name = "${var.resource_group_name}"
    network_security_group_name = "${var.network_security_group_name}"
}

resource "azurerm_network_security_rule" "https" {
    name = "https"
    priority = "${element(split(",", var.priority), 2)}"
    direction = "Inbound"
    access = "Allow"
    protocol = "Tcp"
    source_port_range = "*"
    destination_port_range = "443"
    source_address_prefix = "*"
    destination_address_prefix = "*"
    resource_group_name = "${var.resource_group_name}"
    network_security_group_name = "${var.network_security_group_name}"
}

resource "azurerm_network_security_rule" "ssh" {
    name = "ssh"
    priority = "${element(split(",", var.priority), 3)}"
    direction = "Inbound"
    access = "Allow"
    protocol = "Tcp"
    source_port_range = "*"
    destination_port_range = "22"
    source_address_prefix = "*"
    destination_address_prefix = "*"
    resource_group_name = "${var.resource_group_name}"
    network_security_group_name = "${var.network_security_group_name}"
}

resource "azurerm_network_security_rule" "lb-healthcheck" {
    name = "lb-healthcheck"
    priority = "${element(split(",", var.priority), 4)}"
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

resource "azurerm_network_security_rule" "all" {
    name = "all"
    priority = "${element(split(",", var.priority), 5)}"
    direction = "Outbound"
    access = "Allow"
    protocol = "Tcp"
    source_port_range = "*"
    destination_port_range = "*"
    source_address_prefix = "*"
    destination_address_prefix = "*"
    resource_group_name = "${var.resource_group_name}"
    network_security_group_name = "${var.network_security_group_name}"
}
