## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | 2.72.0 |
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_admin_details"></a> [admin\_details](#input\_admin\_details) | The login information of the admin user in the vm. | <pre>object({<br>    admin_username = string<br>    admin_password = string<br>  })</pre> | n/a | yes |
| <a name="input_audience_id"></a> [audience\_id](#input\_audience\_id) | The client id of the Azure VPN application. See Create an Active Directory (AD) tenant for P2S OpenVPN protocol connections for values. | `string` | n/a | yes |
| <a name="input_location"></a> [location](#input\_location) | The location of all the resources. | `string` | n/a | yes |
| <a name="input_subscription_id"></a> [subscription\_id](#input\_subscription\_id) | The ID of the Subscription. Changing this forces a new Subscription to be created. | `string` | n/a | yes |
| <a name="input_tenant_id"></a> [tenant\_id](#input\_tenant\_id) | The Azure Tenant ID. | `string` | n/a | yes |
## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_firewall"></a> [firewall](#module\_firewall) | ./modules/firewall | n/a |
| <a name="module_gateway_route_table"></a> [gateway\_route\_table](#module\_gateway\_route\_table) | ./modules/route_table | n/a |
| <a name="module_local_remote"></a> [local\_remote](#module\_local\_remote) | ./modules/two_way_peering | n/a |
| <a name="module_spoke_route_table"></a> [spoke\_route\_table](#module\_spoke\_route\_table) | ./modules/route_table | n/a |
| <a name="module_ubuntu_vm_spoke"></a> [ubuntu\_vm\_spoke](#module\_ubuntu\_vm\_spoke) | ./modules/vm | n/a |
| <a name="module_vpn"></a> [vpn](#module\_vpn) | ./modules/vpn | n/a |
## Resources

| Name | Type |
|------|------|
| [azurerm_log_analytics_workspace.logs](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/log_analytics_workspace) | resource |
| [azurerm_resource_group.hub](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/resource_group) | resource |
| [azurerm_resource_group.spoke](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/resource_group) | resource |
| [azurerm_subnet.GatewaySubnet](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/subnet) | resource |
| [azurerm_subnet.azure_firewall_subnet](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/subnet) | resource |
| [azurerm_virtual_network.hub_vnet](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/virtual_network) | resource |
| [azurerm_virtual_network.spoke_vnet](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/virtual_network) | resource |
## Outputs

| Name | Description |
|------|-------------|
| <a name="output_template"></a> [template](#output\_template) | Creates a template that shows all the values of the complicated local objects. |
