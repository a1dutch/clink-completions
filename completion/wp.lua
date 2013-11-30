local wp_global_flags = {
	"--config",
	"--path",
	"--url",
	"--user",
	"--require",
	"--color",
	"--no-color",
	"--debug",
	"--prompt",
	"--quiet"
}

local wp_cache_parser = clink.arg.new_parser()
local wp_cap_parser = clink.arg.new_parser()
local wp_cli_parser = clink.arg.new_parser()
local wp_comment_parser = clink.arg.new_parser()
local wp_core_parser = clink.arg.new_parser()
local wp_db_parser = clink.arg.new_parser()
local wp_eval_parser = clink.arg.new_parser()
local wp_eval_file_parser = clink.arg.new_parser()
local wp_export_parser = clink.arg.new_parser()
local wp_import_parser = clink.arg.new_parser()
local wp_media_parser = clink.arg.new_parser()
local wp_network_meta_parser = clink.arg.new_parser()
local wp_option_parser = clink.arg.new_parser()
local wp_plugin_parser = clink.arg.new_parser()
local wp_post_parser = clink.arg.new_parser()
local wp_post_meta_parser = clink.arg.new_parser()
local wp_rewrite_parser = clink.arg.new_parser()
local wp_role_parser = clink.arg.new_parser()
local wp_scaffold_parser = clink.arg.new_parser()
local wp_search_replace_parser = clink.arg.new_parser()
local wp_shell_parser = clink.arg.new_parser()
local wp_site_parser = clink.arg.new_parser()
local wp_term_parser = clink.arg.new_parser()
local wp_theme_parser = clink.arg.new_parser()
local wp_transient_parser = clink.arg.new_parser()
local wp_user_parser = clink.arg.new_parser()
local wp_user_meta_parser = clink.arg.new_parser()
--------------------------------------------------------
-- WP CLI
--------------------------------------------------------
local wp_parser = clink.arg.new_parser()
wp_parser:set_flags(wp_global_flags)
wp_parser:set_arguments({
	"cache"..wp_cache_parser,					-- Manage the object cache.
	"cap"..wp_cap_parser,						-- Manage user capabilities.
	"cli"..wp_cli_parser,						-- Get information about WP-CLI itself.
	"comment"..wp_comment_parser,				-- Manage comments.
	"core"..wp_core_parser,						-- Download, install, update and otherwise manage WordPress proper.
	"db"..wp_db_parser,							-- Perform basic database operations.
	"eval"..wp_eval_parser,						-- Execute arbitrary PHP code after loading WordPress.
	"eval-file"..wp_eval_file_parser,			-- Load and execute a PHP file after loading WordPress.
	"export"..wp_export_parser,					-- Export content to a WXR file.
	"import"..wp_import_parser,					-- Import content from a WXR file.
	"media"..wp_media_parser,					-- Manage attachments.
	"network-meta"..wp_network_meta_parser,		-- Manage network custom fields.
	"option"..wp_option_parser,					-- Manage options.
	"plugin"..wp_plugin_parser,					-- Manage plugins.
	"post"..wp_post_parser,						-- Manage posts.
	"post-meta"..wp_post_meta_parser,			-- Manage post custom fields.
	"rewrite"..wp_rewrite_parser,				-- Manage rewrite rules.
	"role"..wp_role_parser,						-- Manage user roles.
	"scaffold"..wp_scaffold_parser,				-- Generate code for post types, taxonomies, etc.
	"search-replace"..wp_search_replace_parser,	-- Search/replace strings in the database.
	"shell"..wp_shell_parser,					-- Interactive PHP console.
	"site"..wp_site_parser,						-- Perform site-wide operations.
	"term"..wp_term_parser,						-- Manage terms.
	"theme"..wp_theme_parser,					-- Manage themes.
	"transient"..wp_transient_parser,			-- Manage transients.
	"user"..wp_user_parser,						-- Manage users.
	"user-meta"..wp_user_meta_parser			-- Manage user custom fields.
})
clink.arg.register_parser("wp", wp_parser)
------------------------
-- wp help
------------------------
local wp_help_parser = clink.arg.new_parser()
wp_help_parser:set_arguments({
    "help" .. clink.arg.new_parser():set_arguments({
        wp_parser:flatten_argument(1)
    })
})
clink.arg.register_parser("wp", wp_help_parser)
