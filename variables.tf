variable "application_identifier_uris" {
  description = <<EOT
Map of application_identifier_uris, attributes below
Required:
    - application_id
    - identifier_uri
Optional:
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - read (optional)
EOT

  type = map(object({
    application_id = string
    identifier_uri = string
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      read   = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.application_identifier_uris : (
        can(regex("^(/[^/]+/[^/]+)+$", v.application_id))
      )
    ])
    error_message = "must be a valid Azure resource ID"
  }
  validation {
    condition = alltrue([
      for k, v in var.application_identifier_uris : (
        length(v.identifier_uri) > 0
      )
    ])
    error_message = "must not be empty"
  }
}

