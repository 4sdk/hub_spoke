output "object" {
  value       = azurerm_virtual_network.vnet
  description = "The full vnet object."
}

output "id" {
  value       = azurerm_virtual_network.vnet.id
  description = "The vnet id."
}

output "name" {
  value       = azurerm_virtual_network.vnet.name
  description = "The vnet name."
}

output "subnets" {
  value       = azurerm_subnet.subnets
  description = "All the subnets associated with the vnet."
}

output "subnets_ids" {
  value       = {for subnet in azurerm_subnet.subnets : subnet.name => subnet.id}
  description = "A map where the keys are all the associated subnets name and the values are the subnets id."
  depends_on  = [azurerm_subnet.subnets]
}