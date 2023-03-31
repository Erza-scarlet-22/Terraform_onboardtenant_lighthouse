# LightHouse Definition.
resource "azurerm_lighthouse_definition" "example" {
  name               = "Lighthouse definition"
  description        = "This is a lighthouse definition created via Terraform"
  # ID of the managing tenant(SERVICE-PROVIDER).
  managing_tenant_id = "c5e27dfd-701b-4853-b117-7a5420d1d05b"
  # ID of the managed subscription(CUSTOMER), if scope is of subscription level.
  scope              = "/subscriptions/${var.subscription_id}" 

# This authorization can be multiple.
  authorization {
     
      principal_id  = "bc1d4326-a698-43dc-b7e9-8951a4493a19"
      role_definition_id   = "acdd72a7-3385-48ef-bd42-f606fba81ae7"
      principal_display_name = "Ani_LightHouse_Reader"
    }
  authorization {
      
      principal_id  = "fd6612c5-1270-453b-a77a-0290a35e9422"
      role_definition_id   = "b24988ac-6180-42a0-ab88-20f7382dd24c"
      principal_display_name = "Ani_LightHouse_Contributor"
  }
}

