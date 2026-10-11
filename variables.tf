variable "cloud_run_domain_mappings" {
  description = <<EOT
Map of cloud_run_domain_mappings, attributes below
Required:
    - location
    - name
    - spec (block):
        - certificate_mode (optional)
        - force_override (optional)
        - route_name (required)
Optional:
    - deletion_policy
    - project
    - metadata (block):
        - annotations (optional)
        - labels (optional)
        - namespace (required)
    - timeouts (block):
        - create (optional)
        - delete (optional)
EOT

  type = map(object({
    location        = string
    name            = string
    deletion_policy = optional(string)
    project         = optional(string)
    spec = object({
      certificate_mode = optional(string)
      force_override   = optional(bool)
      route_name       = string
    })
    metadata = optional(object({
      annotations = optional(map(string))
      labels      = optional(map(string))
      namespace   = string
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
    }))
  }))
  # Note: 2 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

