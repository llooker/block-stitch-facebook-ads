project_name: "block-stitch-facebook-ads"

################ Constants ################

constant:  CONFIG_PROJECT_NAME {
  value: "block-stitch-facebook-ads-config"
  export:  override_required
}

constant: CONNECTION_NAME {
  value: "facebook_data"
  export: override_required
}

constant: FACEBOOK_ADS_SCHEMA_NAME {
  value: "facebook_data"
  export: override_required
}

constant: FACEBOOK_ADS_ACCOUNT_ID {
  value: "facbook ads account id"
  export: override_required
}

################ Dependencies ################

local_dependency: {
  project: "@{CONFIG_PROJECT_NAME}"

  override_constant: CONNECTION_NAME {
    value: "facebook_data"
  }

  override_constant: FACEBOOK_ADS_SCHEMA_NAME {
    value: "facebook_data"
  }

  override_constant: FACEBOOK_ADS_ACCOUNT_ID {
    value: "101441173373823"
  }

}
