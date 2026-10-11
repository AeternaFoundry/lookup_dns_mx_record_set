variable "mx_record_set_lookup" {
  description = <<EOT
Map of mx_record_set_lookup, attributes below
Required:
    - domain
EOT

  type = map(object({
    domain = string
  }))
}

