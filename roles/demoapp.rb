name "demoapp"
description "Web app role."
run_list(
  "recipe[demo::umbraco]"
  )

default_attributes(
  'vmworld' => 'umbraco',
  'umbraco' => {
    'port' => 80
  }
  )
