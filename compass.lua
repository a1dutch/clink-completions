local compass_argument_tree = {
	'clean',
	'compile',
	'create',
	'init',
	'watch',
	'config',
	'extension',
	'frameworks',
	'grid-img',
	'imports',
	'install',
	'interactive',
	'sprite',
	'stats',
	'unpack',
	'validate',
	'version',
	help = {
		'clean',
		'compile',
		'create',
		'init',
		'watch',
		'config',
		'extension',
		'frameworks',
		'grid-img',
		'imports',
		'install',
		'interactive',
		'sprite',
		'stats',
		'unpack',
		'validate',
		'version'
	}	
}
clink.arg.register_tree("compass", compass_argument_tree)
