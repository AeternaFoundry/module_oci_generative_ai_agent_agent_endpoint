variable "generative_ai_agent_agent_endpoints" {
  description = <<EOT
Map of generative_ai_agent_agent_endpoints, attributes below
Required:
    - agent_id
    - compartment_id
Optional:
    - defined_tags
    - description
    - display_name
    - freeform_tags
    - metadata
    - should_enable_citation
    - should_enable_multi_language
    - should_enable_session
    - should_enable_trace
    - content_moderation_config (block):
        - should_enable_on_input (optional)
        - should_enable_on_output (optional)
    - guardrail_config (block):
        - content_moderation_config (optional, block):
            - input_guardrail_mode (optional)
            - output_guardrail_mode (optional)
        - personally_identifiable_information_config (optional, block):
            - input_guardrail_mode (optional)
            - output_guardrail_mode (optional)
        - prompt_injection_config (optional, block):
            - input_guardrail_mode (optional)
    - human_input_config (block):
        - should_enable_human_input (required)
    - output_config (block):
        - output_location (required, block):
            - bucket (required)
            - namespace (required)
            - output_location_type (required)
            - prefix (optional)
        - retention_period_in_minutes (optional)
    - provisioned_capacity_config (block):
        - platform_runtime_config (optional, block):
            - platform_runtime_config_type (optional)
            - version (optional)
        - provisioned_capacity_id (required)
        - tool_runtime_configs (optional, block):
            - tool_runtime_config_type (required)
            - version (optional)
    - session_config (block):
        - idle_timeout_in_seconds (optional)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    agent_id                     = string
    compartment_id               = string
    defined_tags                 = optional(map(string))
    description                  = optional(string)
    display_name                 = optional(string)
    freeform_tags                = optional(map(string))
    metadata                     = optional(map(string))
    should_enable_citation       = optional(bool)
    should_enable_multi_language = optional(bool)
    should_enable_session        = optional(bool)
    should_enable_trace          = optional(bool)
    content_moderation_config = optional(object({
      should_enable_on_input  = optional(bool)
      should_enable_on_output = optional(bool)
    }))
    guardrail_config = optional(object({
      content_moderation_config = optional(object({
        input_guardrail_mode  = optional(string)
        output_guardrail_mode = optional(string)
      }))
      personally_identifiable_information_config = optional(object({
        input_guardrail_mode  = optional(string)
        output_guardrail_mode = optional(string)
      }))
      prompt_injection_config = optional(object({
        input_guardrail_mode = optional(string)
      }))
    }))
    human_input_config = optional(object({
      should_enable_human_input = bool
    }))
    output_config = optional(object({
      output_location = object({
        bucket               = string
        namespace            = string
        output_location_type = string
        prefix               = optional(string)
      })
      retention_period_in_minutes = optional(number)
    }))
    provisioned_capacity_config = optional(object({
      platform_runtime_config = optional(object({
        platform_runtime_config_type = optional(string)
        version                      = optional(string)
      }))
      provisioned_capacity_id = string
      tool_runtime_configs = optional(list(object({
        tool_runtime_config_type = string
        version                  = optional(string)
      })))
    }))
    session_config = optional(object({
      idle_timeout_in_seconds = optional(number)
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.generative_ai_agent_agent_endpoints : (
        v.output_config == null || (contains([for v in ["OBJECT_STORAGE_PREFIX"] : lower(v)], lower(v.output_config.output_location.output_location_type)))
      )
    ])
    error_message = "must be one of: \"OBJECT_STORAGE_PREFIX\""
  }
}

