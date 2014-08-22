name "demoapp"
description "Web app role."
run_list(
  # "recipe[demo-app::django]"
  )

default_attributes(
  'vmworld' => 'umbraco'
  )
