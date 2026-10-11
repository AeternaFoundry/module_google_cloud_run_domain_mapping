resource "google_cloud_run_domain_mapping" "cloud_run_domain_mappings" {
  for_each = var.cloud_run_domain_mappings

  location        = each.value.location
  name            = each.value.name
  deletion_policy = each.value.deletion_policy
  project         = each.value.project

  spec {
    certificate_mode = each.value.spec.certificate_mode
    force_override   = each.value.spec.force_override
    route_name       = each.value.spec.route_name
  }

  dynamic "metadata" {
    for_each = each.value.metadata != null ? [each.value.metadata] : []
    content {
      annotations = metadata.value.annotations
      labels      = metadata.value.labels
      namespace   = metadata.value.namespace
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
    }
  }
}

