resource "oci_generative_ai_agent_agent_endpoint" "generative_ai_agent_agent_endpoints" {
  for_each = var.generative_ai_agent_agent_endpoints

  agent_id                     = each.value.agent_id
  compartment_id               = each.value.compartment_id
  defined_tags                 = each.value.defined_tags
  description                  = each.value.description
  display_name                 = each.value.display_name
  freeform_tags                = each.value.freeform_tags
  metadata                     = each.value.metadata
  should_enable_citation       = each.value.should_enable_citation
  should_enable_multi_language = each.value.should_enable_multi_language
  should_enable_session        = each.value.should_enable_session
  should_enable_trace          = each.value.should_enable_trace

  dynamic "content_moderation_config" {
    for_each = each.value.content_moderation_config != null ? [each.value.content_moderation_config] : []
    content {
      should_enable_on_input  = content_moderation_config.value.should_enable_on_input
      should_enable_on_output = content_moderation_config.value.should_enable_on_output
    }
  }

  dynamic "guardrail_config" {
    for_each = each.value.guardrail_config != null ? [each.value.guardrail_config] : []
    content {
      dynamic "content_moderation_config" {
        for_each = guardrail_config.value.content_moderation_config != null ? [guardrail_config.value.content_moderation_config] : []
        content {
          input_guardrail_mode  = content_moderation_config.value.input_guardrail_mode
          output_guardrail_mode = content_moderation_config.value.output_guardrail_mode
        }
      }
      dynamic "personally_identifiable_information_config" {
        for_each = guardrail_config.value.personally_identifiable_information_config != null ? [guardrail_config.value.personally_identifiable_information_config] : []
        content {
          input_guardrail_mode  = personally_identifiable_information_config.value.input_guardrail_mode
          output_guardrail_mode = personally_identifiable_information_config.value.output_guardrail_mode
        }
      }
      dynamic "prompt_injection_config" {
        for_each = guardrail_config.value.prompt_injection_config != null ? [guardrail_config.value.prompt_injection_config] : []
        content {
          input_guardrail_mode = prompt_injection_config.value.input_guardrail_mode
        }
      }
    }
  }

  dynamic "human_input_config" {
    for_each = each.value.human_input_config != null ? [each.value.human_input_config] : []
    content {
      should_enable_human_input = human_input_config.value.should_enable_human_input
    }
  }

  dynamic "output_config" {
    for_each = each.value.output_config != null ? [each.value.output_config] : []
    content {
      output_location {
        bucket               = output_config.value.output_location.bucket
        namespace            = output_config.value.output_location.namespace
        output_location_type = output_config.value.output_location.output_location_type
        prefix               = output_config.value.output_location.prefix
      }
      retention_period_in_minutes = output_config.value.retention_period_in_minutes
    }
  }

  dynamic "provisioned_capacity_config" {
    for_each = each.value.provisioned_capacity_config != null ? [each.value.provisioned_capacity_config] : []
    content {
      dynamic "platform_runtime_config" {
        for_each = provisioned_capacity_config.value.platform_runtime_config != null ? [provisioned_capacity_config.value.platform_runtime_config] : []
        content {
          platform_runtime_config_type = platform_runtime_config.value.platform_runtime_config_type
          version                      = platform_runtime_config.value.version
        }
      }
      provisioned_capacity_id = provisioned_capacity_config.value.provisioned_capacity_id
      dynamic "tool_runtime_configs" {
        for_each = provisioned_capacity_config.value.tool_runtime_configs != null ? provisioned_capacity_config.value.tool_runtime_configs : []
        content {
          tool_runtime_config_type = tool_runtime_configs.value.tool_runtime_config_type
          version                  = tool_runtime_configs.value.version
        }
      }
    }
  }

  dynamic "session_config" {
    for_each = each.value.session_config != null ? [each.value.session_config] : []
    content {
      idle_timeout_in_seconds = session_config.value.idle_timeout_in_seconds
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

