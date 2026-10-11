variable "resource_action_lookup" {
  description = <<EOT
Map of resource_action_lookup, attributes below
Required:
    - type
Optional:
    - action
    - body
    - headers
    - method
    - query_parameters
    - resource_id
    - response_export_values
    - retry
    - sensitive_response_export_values
EOT

  type = map(object({
    type                   = string
    action                 = optional(string)
    body                   = optional(any)
    headers                = optional(map(string))
    method                 = optional(string)
    query_parameters       = optional(map(any))
    resource_id            = optional(string)
    response_export_values = optional(any)
    retry = optional(object({
      error_message_regex  = list(string)
      interval_seconds     = optional(number)
      max_interval_seconds = optional(number)
      multiplier           = optional(number)
      randomization_factor = optional(number)
    }))
    sensitive_response_export_values = optional(any)
  }))
}

