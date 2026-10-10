output "kms_custom_key_stores_id" {
  description = "Map of id values across all kms_custom_key_stores, keyed the same as var.kms_custom_key_stores"
  value       = { for k, v in aws_kms_custom_key_store.kms_custom_key_stores : k => v.id if v.id != null && length(v.id) > 0 }
}
output "kms_custom_key_stores_cloud_hsm_cluster_id" {
  description = "Map of cloud_hsm_cluster_id values across all kms_custom_key_stores, keyed the same as var.kms_custom_key_stores"
  value       = { for k, v in aws_kms_custom_key_store.kms_custom_key_stores : k => v.cloud_hsm_cluster_id if v.cloud_hsm_cluster_id != null && length(v.cloud_hsm_cluster_id) > 0 }
}
output "kms_custom_key_stores_custom_key_store_name" {
  description = "Map of custom_key_store_name values across all kms_custom_key_stores, keyed the same as var.kms_custom_key_stores"
  value       = { for k, v in aws_kms_custom_key_store.kms_custom_key_stores : k => v.custom_key_store_name if v.custom_key_store_name != null && length(v.custom_key_store_name) > 0 }
}
output "kms_custom_key_stores_custom_key_store_type" {
  description = "Map of custom_key_store_type values across all kms_custom_key_stores, keyed the same as var.kms_custom_key_stores"
  value       = { for k, v in aws_kms_custom_key_store.kms_custom_key_stores : k => v.custom_key_store_type if v.custom_key_store_type != null && length(v.custom_key_store_type) > 0 }
}
output "kms_custom_key_stores_key_store_password" {
  description = "Map of key_store_password values across all kms_custom_key_stores, keyed the same as var.kms_custom_key_stores"
  value       = { for k, v in aws_kms_custom_key_store.kms_custom_key_stores : k => v.key_store_password if v.key_store_password != null && length(v.key_store_password) > 0 }
}
output "kms_custom_key_stores_region" {
  description = "Map of region values across all kms_custom_key_stores, keyed the same as var.kms_custom_key_stores"
  value       = { for k, v in aws_kms_custom_key_store.kms_custom_key_stores : k => v.region if v.region != null && length(v.region) > 0 }
}
output "kms_custom_key_stores_trust_anchor_certificate" {
  description = "Map of trust_anchor_certificate values across all kms_custom_key_stores, keyed the same as var.kms_custom_key_stores"
  value       = { for k, v in aws_kms_custom_key_store.kms_custom_key_stores : k => v.trust_anchor_certificate if v.trust_anchor_certificate != null && length(v.trust_anchor_certificate) > 0 }
}
output "kms_custom_key_stores_xks_proxy_authentication_credential" {
  description = "Map of xks_proxy_authentication_credential values across all kms_custom_key_stores, keyed the same as var.kms_custom_key_stores"
  value       = { for k, v in aws_kms_custom_key_store.kms_custom_key_stores : k => one(v.xks_proxy_authentication_credential) if v.xks_proxy_authentication_credential != null && length(v.xks_proxy_authentication_credential) > 0 }
}
output "kms_custom_key_stores_xks_proxy_connectivity" {
  description = "Map of xks_proxy_connectivity values across all kms_custom_key_stores, keyed the same as var.kms_custom_key_stores"
  value       = { for k, v in aws_kms_custom_key_store.kms_custom_key_stores : k => v.xks_proxy_connectivity if v.xks_proxy_connectivity != null && length(v.xks_proxy_connectivity) > 0 }
}
output "kms_custom_key_stores_xks_proxy_uri_endpoint" {
  description = "Map of xks_proxy_uri_endpoint values across all kms_custom_key_stores, keyed the same as var.kms_custom_key_stores"
  value       = { for k, v in aws_kms_custom_key_store.kms_custom_key_stores : k => v.xks_proxy_uri_endpoint if v.xks_proxy_uri_endpoint != null && length(v.xks_proxy_uri_endpoint) > 0 }
}
output "kms_custom_key_stores_xks_proxy_uri_path" {
  description = "Map of xks_proxy_uri_path values across all kms_custom_key_stores, keyed the same as var.kms_custom_key_stores"
  value       = { for k, v in aws_kms_custom_key_store.kms_custom_key_stores : k => v.xks_proxy_uri_path if v.xks_proxy_uri_path != null && length(v.xks_proxy_uri_path) > 0 }
}
output "kms_custom_key_stores_xks_proxy_vpc_endpoint_service_name" {
  description = "Map of xks_proxy_vpc_endpoint_service_name values across all kms_custom_key_stores, keyed the same as var.kms_custom_key_stores"
  value       = { for k, v in aws_kms_custom_key_store.kms_custom_key_stores : k => v.xks_proxy_vpc_endpoint_service_name if v.xks_proxy_vpc_endpoint_service_name != null && length(v.xks_proxy_vpc_endpoint_service_name) > 0 }
}

