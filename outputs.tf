output "generative_ai_agent_agent_endpoints_id" {
  description = "Map of id values across all generative_ai_agent_agent_endpoints, keyed the same as var.generative_ai_agent_agent_endpoints except keys with no id are omitted"
  value       = { for k, v in oci_generative_ai_agent_agent_endpoint.generative_ai_agent_agent_endpoints : k => v.id if v.id != null && length(v.id) > 0 }
}
output "generative_ai_agent_agent_endpoints_agent_id" {
  description = "Map of agent_id values across all generative_ai_agent_agent_endpoints, keyed the same as var.generative_ai_agent_agent_endpoints except keys with no agent_id are omitted"
  value       = { for k, v in oci_generative_ai_agent_agent_endpoint.generative_ai_agent_agent_endpoints : k => v.agent_id if v.agent_id != null && length(v.agent_id) > 0 }
}
output "generative_ai_agent_agent_endpoints_compartment_id" {
  description = "Map of compartment_id values across all generative_ai_agent_agent_endpoints, keyed the same as var.generative_ai_agent_agent_endpoints except keys with no compartment_id are omitted"
  value       = { for k, v in oci_generative_ai_agent_agent_endpoint.generative_ai_agent_agent_endpoints : k => v.compartment_id if v.compartment_id != null && length(v.compartment_id) > 0 }
}
output "generative_ai_agent_agent_endpoints_content_moderation_config" {
  description = "Map of content_moderation_config values across all generative_ai_agent_agent_endpoints, keyed the same as var.generative_ai_agent_agent_endpoints except keys with no content_moderation_config are omitted"
  value       = { for k, v in oci_generative_ai_agent_agent_endpoint.generative_ai_agent_agent_endpoints : k => one(v.content_moderation_config) if v.content_moderation_config != null && length(v.content_moderation_config) > 0 }
}
output "generative_ai_agent_agent_endpoints_defined_tags" {
  description = "Map of defined_tags values across all generative_ai_agent_agent_endpoints, keyed the same as var.generative_ai_agent_agent_endpoints except keys with no defined_tags are omitted"
  value       = { for k, v in oci_generative_ai_agent_agent_endpoint.generative_ai_agent_agent_endpoints : k => v.defined_tags if v.defined_tags != null && length(v.defined_tags) > 0 }
}
output "generative_ai_agent_agent_endpoints_description" {
  description = "Map of description values across all generative_ai_agent_agent_endpoints, keyed the same as var.generative_ai_agent_agent_endpoints except keys with no description are omitted"
  value       = { for k, v in oci_generative_ai_agent_agent_endpoint.generative_ai_agent_agent_endpoints : k => v.description if v.description != null && length(v.description) > 0 }
}
output "generative_ai_agent_agent_endpoints_display_name" {
  description = "Map of display_name values across all generative_ai_agent_agent_endpoints, keyed the same as var.generative_ai_agent_agent_endpoints except keys with no display_name are omitted"
  value       = { for k, v in oci_generative_ai_agent_agent_endpoint.generative_ai_agent_agent_endpoints : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "generative_ai_agent_agent_endpoints_freeform_tags" {
  description = "Map of freeform_tags values across all generative_ai_agent_agent_endpoints, keyed the same as var.generative_ai_agent_agent_endpoints except keys with no freeform_tags are omitted"
  value       = { for k, v in oci_generative_ai_agent_agent_endpoint.generative_ai_agent_agent_endpoints : k => v.freeform_tags if v.freeform_tags != null && length(v.freeform_tags) > 0 }
}
output "generative_ai_agent_agent_endpoints_guardrail_config" {
  description = "Map of guardrail_config values across all generative_ai_agent_agent_endpoints, keyed the same as var.generative_ai_agent_agent_endpoints except keys with no guardrail_config are omitted"
  value       = { for k, v in oci_generative_ai_agent_agent_endpoint.generative_ai_agent_agent_endpoints : k => one(v.guardrail_config) if v.guardrail_config != null && length(v.guardrail_config) > 0 }
}
output "generative_ai_agent_agent_endpoints_human_input_config" {
  description = "Map of human_input_config values across all generative_ai_agent_agent_endpoints, keyed the same as var.generative_ai_agent_agent_endpoints except keys with no human_input_config are omitted"
  value       = { for k, v in oci_generative_ai_agent_agent_endpoint.generative_ai_agent_agent_endpoints : k => one(v.human_input_config) if v.human_input_config != null && length(v.human_input_config) > 0 }
}
output "generative_ai_agent_agent_endpoints_lifecycle_details" {
  description = "Map of lifecycle_details values across all generative_ai_agent_agent_endpoints, keyed the same as var.generative_ai_agent_agent_endpoints except keys with no lifecycle_details are omitted"
  value       = { for k, v in oci_generative_ai_agent_agent_endpoint.generative_ai_agent_agent_endpoints : k => v.lifecycle_details if v.lifecycle_details != null && length(v.lifecycle_details) > 0 }
}
output "generative_ai_agent_agent_endpoints_metadata" {
  description = "Map of metadata values across all generative_ai_agent_agent_endpoints, keyed the same as var.generative_ai_agent_agent_endpoints except keys with no metadata are omitted"
  value       = { for k, v in oci_generative_ai_agent_agent_endpoint.generative_ai_agent_agent_endpoints : k => v.metadata if v.metadata != null && length(v.metadata) > 0 }
}
output "generative_ai_agent_agent_endpoints_output_config" {
  description = "Map of output_config values across all generative_ai_agent_agent_endpoints, keyed the same as var.generative_ai_agent_agent_endpoints except keys with no output_config are omitted"
  value       = { for k, v in oci_generative_ai_agent_agent_endpoint.generative_ai_agent_agent_endpoints : k => one(v.output_config) if v.output_config != null && length(v.output_config) > 0 }
}
output "generative_ai_agent_agent_endpoints_provisioned_capacity_config" {
  description = "Map of provisioned_capacity_config values across all generative_ai_agent_agent_endpoints, keyed the same as var.generative_ai_agent_agent_endpoints except keys with no provisioned_capacity_config are omitted"
  value       = { for k, v in oci_generative_ai_agent_agent_endpoint.generative_ai_agent_agent_endpoints : k => one(v.provisioned_capacity_config) if v.provisioned_capacity_config != null && length(v.provisioned_capacity_config) > 0 }
}
output "generative_ai_agent_agent_endpoints_session_config" {
  description = "Map of session_config values across all generative_ai_agent_agent_endpoints, keyed the same as var.generative_ai_agent_agent_endpoints except keys with no session_config are omitted"
  value       = { for k, v in oci_generative_ai_agent_agent_endpoint.generative_ai_agent_agent_endpoints : k => one(v.session_config) if v.session_config != null && length(v.session_config) > 0 }
}
output "generative_ai_agent_agent_endpoints_should_enable_citation" {
  description = "Map of should_enable_citation values across all generative_ai_agent_agent_endpoints, keyed the same as var.generative_ai_agent_agent_endpoints except keys with no should_enable_citation are omitted"
  value       = { for k, v in oci_generative_ai_agent_agent_endpoint.generative_ai_agent_agent_endpoints : k => v.should_enable_citation if v.should_enable_citation != null }
}
output "generative_ai_agent_agent_endpoints_should_enable_multi_language" {
  description = "Map of should_enable_multi_language values across all generative_ai_agent_agent_endpoints, keyed the same as var.generative_ai_agent_agent_endpoints except keys with no should_enable_multi_language are omitted"
  value       = { for k, v in oci_generative_ai_agent_agent_endpoint.generative_ai_agent_agent_endpoints : k => v.should_enable_multi_language if v.should_enable_multi_language != null }
}
output "generative_ai_agent_agent_endpoints_should_enable_session" {
  description = "Map of should_enable_session values across all generative_ai_agent_agent_endpoints, keyed the same as var.generative_ai_agent_agent_endpoints except keys with no should_enable_session are omitted"
  value       = { for k, v in oci_generative_ai_agent_agent_endpoint.generative_ai_agent_agent_endpoints : k => v.should_enable_session if v.should_enable_session != null }
}
output "generative_ai_agent_agent_endpoints_should_enable_trace" {
  description = "Map of should_enable_trace values across all generative_ai_agent_agent_endpoints, keyed the same as var.generative_ai_agent_agent_endpoints except keys with no should_enable_trace are omitted"
  value       = { for k, v in oci_generative_ai_agent_agent_endpoint.generative_ai_agent_agent_endpoints : k => v.should_enable_trace if v.should_enable_trace != null }
}
output "generative_ai_agent_agent_endpoints_state" {
  description = "Map of state values across all generative_ai_agent_agent_endpoints, keyed the same as var.generative_ai_agent_agent_endpoints except keys with no state are omitted"
  value       = { for k, v in oci_generative_ai_agent_agent_endpoint.generative_ai_agent_agent_endpoints : k => v.state if v.state != null && length(v.state) > 0 }
}
output "generative_ai_agent_agent_endpoints_system_tags" {
  description = "Map of system_tags values across all generative_ai_agent_agent_endpoints, keyed the same as var.generative_ai_agent_agent_endpoints except keys with no system_tags are omitted"
  value       = { for k, v in oci_generative_ai_agent_agent_endpoint.generative_ai_agent_agent_endpoints : k => v.system_tags if v.system_tags != null && length(v.system_tags) > 0 }
}
output "generative_ai_agent_agent_endpoints_time_created" {
  description = "Map of time_created values across all generative_ai_agent_agent_endpoints, keyed the same as var.generative_ai_agent_agent_endpoints except keys with no time_created are omitted"
  value       = { for k, v in oci_generative_ai_agent_agent_endpoint.generative_ai_agent_agent_endpoints : k => v.time_created if v.time_created != null && length(v.time_created) > 0 }
}
output "generative_ai_agent_agent_endpoints_time_updated" {
  description = "Map of time_updated values across all generative_ai_agent_agent_endpoints, keyed the same as var.generative_ai_agent_agent_endpoints except keys with no time_updated are omitted"
  value       = { for k, v in oci_generative_ai_agent_agent_endpoint.generative_ai_agent_agent_endpoints : k => v.time_updated if v.time_updated != null && length(v.time_updated) > 0 }
}

