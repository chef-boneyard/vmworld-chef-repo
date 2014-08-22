name 'demolb'
description 'HAProxy role.'
run_list(
  'recipe[demo::haproxy]'
  )

default_attributes(
  'vmworld' => 'haproxy',
  'haproxy' => {
    'app_server_role' => 'demoapp'
  }
  )
