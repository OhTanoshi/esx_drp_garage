resource_manifest_version '77731fab-63ca-442c-a67b-abc70f28dfa5'

server_scripts {
	'@mysql-async/lib/MySQL.lua',
	'@es_extended/locale.lua',
	'locales/pl.lua',
	'locales/en.lua',
	'config.lua',
	'server.lua'
}
client_scripts {
	'@es_extended/locale.lua',
	'locales/pl.lua',
	'locales/en.lua',
	'config.lua',
	'client.lua'
}
