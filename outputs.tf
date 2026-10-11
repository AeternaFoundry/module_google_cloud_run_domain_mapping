output "cloud_run_domain_mappings_id" {
  description = "Map of id values across all cloud_run_domain_mappings, keyed the same as var.cloud_run_domain_mappings except keys with no id are omitted"
  value       = { for k, v in google_cloud_run_domain_mapping.cloud_run_domain_mappings : k => v.id if v.id != null && length(v.id) > 0 }
}
output "cloud_run_domain_mappings_deletion_policy" {
  description = "Map of deletion_policy values across all cloud_run_domain_mappings, keyed the same as var.cloud_run_domain_mappings except keys with no deletion_policy are omitted"
  value       = { for k, v in google_cloud_run_domain_mapping.cloud_run_domain_mappings : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "cloud_run_domain_mappings_location" {
  description = "Map of location values across all cloud_run_domain_mappings, keyed the same as var.cloud_run_domain_mappings except keys with no location are omitted"
  value       = { for k, v in google_cloud_run_domain_mapping.cloud_run_domain_mappings : k => v.location if v.location != null && length(v.location) > 0 }
}
output "cloud_run_domain_mappings_metadata" {
  description = "Map of metadata values across all cloud_run_domain_mappings, keyed the same as var.cloud_run_domain_mappings except keys with no metadata are omitted"
  value       = { for k, v in google_cloud_run_domain_mapping.cloud_run_domain_mappings : k => one(v.metadata) if v.metadata != null && length(v.metadata) > 0 }
}
output "cloud_run_domain_mappings_name" {
  description = "Map of name values across all cloud_run_domain_mappings, keyed the same as var.cloud_run_domain_mappings except keys with no name are omitted"
  value       = { for k, v in google_cloud_run_domain_mapping.cloud_run_domain_mappings : k => v.name if v.name != null && length(v.name) > 0 }
}
output "cloud_run_domain_mappings_project" {
  description = "Map of project values across all cloud_run_domain_mappings, keyed the same as var.cloud_run_domain_mappings except keys with no project are omitted"
  value       = { for k, v in google_cloud_run_domain_mapping.cloud_run_domain_mappings : k => v.project if v.project != null && length(v.project) > 0 }
}
output "cloud_run_domain_mappings_spec" {
  description = "Map of spec values across all cloud_run_domain_mappings, keyed the same as var.cloud_run_domain_mappings except keys with no spec are omitted"
  value       = { for k, v in google_cloud_run_domain_mapping.cloud_run_domain_mappings : k => one(v.spec) if v.spec != null && length(v.spec) > 0 }
}
output "cloud_run_domain_mappings_status" {
  description = "Map of status values across all cloud_run_domain_mappings, keyed the same as var.cloud_run_domain_mappings except keys with no status are omitted"
  value       = { for k, v in google_cloud_run_domain_mapping.cloud_run_domain_mappings : k => v.status if v.status != null && length(v.status) > 0 }
}

