variable "os_management_hub_lifecycle_stage_promote_software_source_managements" {
  description = <<EOT
Map of os_management_hub_lifecycle_stage_promote_software_source_managements, attributes below
Required:
    - lifecycle_stage_id
Optional:
    - software_source_id
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
    - work_request_details (block):
        - description (optional)
        - display_name (optional)
EOT

  type = map(object({
    lifecycle_stage_id = string
    software_source_id = optional(string)
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
    work_request_details = optional(object({
      description  = optional(string)
      display_name = optional(string)
    }))
  }))
}

