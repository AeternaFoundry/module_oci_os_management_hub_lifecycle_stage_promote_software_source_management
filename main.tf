resource "oci_os_management_hub_lifecycle_stage_promote_software_source_management" "os_management_hub_lifecycle_stage_promote_software_source_managements" {
  for_each = var.os_management_hub_lifecycle_stage_promote_software_source_managements

  lifecycle_stage_id = each.value.lifecycle_stage_id
  software_source_id = each.value.software_source_id

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }

  dynamic "work_request_details" {
    for_each = each.value.work_request_details != null ? [each.value.work_request_details] : []
    content {
      description  = work_request_details.value.description
      display_name = work_request_details.value.display_name
    }
  }
}

