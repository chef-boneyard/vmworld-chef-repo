name 'demodb'
description 'SQL Server role.'
# run_list(
#  'recipe[sql-server::server]',
#   'recipe[demo-app::schema]'
#   )

default_attributes(
  'vmworld' => 'databass',
   'sql_server' => {
	"accept_eula": true,
      "version": "2012"
	}
  )
