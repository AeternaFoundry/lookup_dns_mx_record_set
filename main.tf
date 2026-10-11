data "dns_mx_record_set" "mx_record_set_lookup" {
  for_each = var.mx_record_set_lookup

  domain = each.value.domain
}

