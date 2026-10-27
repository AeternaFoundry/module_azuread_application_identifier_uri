resource "azuread_application_identifier_uri" "application_identifier_uris" {
  for_each = var.application_identifier_uris

  application_id = each.value.application_id
  identifier_uri = each.value.identifier_uri

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      read   = timeouts.value.read
    }
  }
}

