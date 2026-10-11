variable "data_safe_discovery_analytics_lookup" {
  description = <<EOT
Map of data_safe_discovery_analytics_lookup, attributes below
Required:
    - compartment_id
Optional:
    - compartment_id_in_subtree
    - group_by
    - is_common
    - sensitive_data_model_id
    - sensitive_type_group_id
    - sensitive_type_id
    - target_database_group_id
    - target_id
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    compartment_id            = string
    compartment_id_in_subtree = optional(bool)
    group_by                  = optional(string)
    is_common                 = optional(bool)
    sensitive_data_model_id   = optional(string)
    sensitive_type_group_id   = optional(string)
    sensitive_type_id         = optional(string)
    target_database_group_id  = optional(string)
    target_id                 = optional(string)
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}

