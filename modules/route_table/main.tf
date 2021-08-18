resource "azurerm_route_table" "route_table" {
  name                          = var.route_table_name
  location                      = var.location
  resource_group_name           = var.rg_name
  disable_bgp_route_propagation = false

  dynamic route {
    for_each = var.routes
    content {
      name                   = route.value.name
      address_prefix         = route.value.destination_address_prefix
      next_hop_type          = route.value.next_hop_type
      next_hop_in_ip_address = route.value.next_hop_ip_address
    }
  }
}

resource "azurerm_subnet_route_table_association" "spoke_association" {
  subnet_id      = var.associated_subnet_id
  route_table_id = azurerm_route_table.route_table.id
}
