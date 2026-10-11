data "azapi_resource_action" "resource_action_lookup" {
  for_each = var.resource_action_lookup

  type                             = each.value.type
  action                           = each.value.action
  body                             = each.value.body
  headers                          = each.value.headers
  method                           = each.value.method
  query_parameters                 = each.value.query_parameters
  resource_id                      = each.value.resource_id
  response_export_values           = each.value.response_export_values
  retry                            = each.value.retry
  sensitive_response_export_values = each.value.sensitive_response_export_values
}

