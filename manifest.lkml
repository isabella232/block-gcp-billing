project_name: "block-gcp-billing"

################ Constants ################

constant: CONNECTION_NAME {
  value: "gcp_logging"
  export: override_required
}

constant: SCHEMA_NAME {
  value: "gcp_logs"
  export: override_required
}

# Looks like it should just be a single table, so no _* notation
constant: BILLING_EXPORT_TABLE_NAME {
  value: "gcp_billing_export_v1_002831_A42942_C36931"
  export: override_required
}

constant: CONFIG_PROJECT_NAME {
  value: "block-gcp-billing-config"
  export: override_required
}

################ Dependencies ################

local_dependency: {
  project: "@{CONFIG_PROJECT_NAME}"

  override_constant: SCHEMA_NAME {
    value: "@{SCHEMA_NAME}"
  }

  override_constant: BILLING_EXPORT_TABLE_NAME {
    value: "@{BILLING_EXPORT_TABLE_NAME}"
  }
}
