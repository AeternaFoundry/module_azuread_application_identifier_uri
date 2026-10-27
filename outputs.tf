output "application_identifier_uris_id" {
  description = "Map of id values across all application_identifier_uris, keyed the same as var.application_identifier_uris"
  value       = { for k, v in azuread_application_identifier_uri.application_identifier_uris : k => v.id }
}
output "application_identifier_uris_application_id" {
  description = "Map of application_id values across all application_identifier_uris, keyed the same as var.application_identifier_uris"
  value       = { for k, v in azuread_application_identifier_uri.application_identifier_uris : k => v.application_id }
}
output "application_identifier_uris_identifier_uri" {
  description = "Map of identifier_uri values across all application_identifier_uris, keyed the same as var.application_identifier_uris"
  value       = { for k, v in azuread_application_identifier_uri.application_identifier_uris : k => v.identifier_uri }
}

