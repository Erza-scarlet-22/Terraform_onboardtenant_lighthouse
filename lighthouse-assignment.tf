# if blank, points to current subscription.
data "azurerm_subscription" "primary" {

}

resource "azurerm_lighthouse_assignment" "example" {
  scope                    = "/subscriptions/${var.subscription_id}/resourceGroups/test"
  lighthouse_definition_id = azurerm_lighthouse_definition.example.id
}