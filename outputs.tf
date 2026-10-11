output "mx_record_set_lookup_id" {
  description = "Map of id values across all mx_record_set_lookup, keyed the same as var.mx_record_set_lookup except keys with no id are omitted"
  value       = { for k, v in data.dns_mx_record_set.mx_record_set_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "mx_record_set_lookup_domain" {
  description = "Map of domain values across all mx_record_set_lookup, keyed the same as var.mx_record_set_lookup except keys with no domain are omitted"
  value       = { for k, v in data.dns_mx_record_set.mx_record_set_lookup : k => v.domain if v.domain != null && length(v.domain) > 0 }
}
output "mx_record_set_lookup_mx" {
  description = "Map of mx values across all mx_record_set_lookup, keyed the same as var.mx_record_set_lookup except keys with no mx are omitted"
  value       = { for k, v in data.dns_mx_record_set.mx_record_set_lookup : k => v.mx if v.mx != null && length(v.mx) > 0 }
}

