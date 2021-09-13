module "local_remote_peering" {
  source                              = "relative/path/to-file"
  local_network_name                  = azurerm_virtual_network.hub_vnet.name
  local_vnet_name                     = "local"
  local_vnet_id                       = azurerm_virtual_network.hub_vnet.id
  local_to_remote_name                = "local-to-remote-peering"
  local_to_remote_resource_group_name = azurerm_virtual_network.hub_vnet.resource_group_name
  local_remote_allow_gateway_transit  = true
  remote_vnet_name                    = "remote"
  remote_vnet_id                      = azurerm_virtual_network.spoke_vnet.id
  remote_to_local_name                = "remote-to-local-peering"
  remote_local_resource_group_name    = azurerm_virtual_network.spoke_vnet.resource_group_name
  remote_local_use_remote_gateways    = true
  depends_on                          = [
    azurerm_virtual_network.hub_vnet,
    azurerm_virtual_network.spoke_vnet,
    module.vpn_connection]
}
