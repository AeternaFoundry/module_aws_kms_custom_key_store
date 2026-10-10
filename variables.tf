variable "kms_custom_key_stores" {
  description = <<EOT
Map of kms_custom_key_stores, attributes below
Required:
    - custom_key_store_name
Optional:
    - cloud_hsm_cluster_id
    - custom_key_store_type
    - key_store_password
    - region
    - trust_anchor_certificate
    - xks_proxy_connectivity
    - xks_proxy_uri_endpoint
    - xks_proxy_uri_path
    - xks_proxy_vpc_endpoint_service_name
    - xks_proxy_authentication_credential (block):
        - access_key_id (required)
        - raw_secret_access_key (required)
EOT

  type = map(object({
    custom_key_store_name               = string
    cloud_hsm_cluster_id                = optional(string)
    custom_key_store_type               = optional(string)
    key_store_password                  = optional(string)
    region                              = optional(string)
    trust_anchor_certificate            = optional(string)
    xks_proxy_connectivity              = optional(string)
    xks_proxy_uri_endpoint              = optional(string)
    xks_proxy_uri_path                  = optional(string)
    xks_proxy_vpc_endpoint_service_name = optional(string)
    xks_proxy_authentication_credential = optional(object({
      access_key_id         = string
      raw_secret_access_key = string
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.kms_custom_key_stores : (
        v.key_store_password == null || (length(v.key_store_password) >= 7 && length(v.key_store_password) <= 32)
      )
    ])
    error_message = "must be between 7 and 32 characters"
  }
  # Note: 2 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

