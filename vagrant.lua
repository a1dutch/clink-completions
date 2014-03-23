--------------------------------------------------------
-- Vagrant Plugins
--------------------------------------------------------
vbox_snapshot = true	-- vagrant-vbox-snapshot
vbguest = true          -- vagrant-vbguest
sahara = false          -- sahara
global_status = false	-- global-status
multi_putty = false		-- vagrant-multi-putty

--------------------------------------------------------
-- vagrant box add
local vagrant_box_add_parser = clink.arg.new_parser();
vagrant_box_add_parser:set_flags(
	"--clean", "-c",
	"--force", "-f",
	"--insecure",
	"--cacert",
	"--cert",
	"--provider",
	"--box-version",
	"--checksum",
	"--checksum-type",
	"--name",
	"--help", "-h"
);
-- vagrant box list
local vagrant_box_list_parser = clink.arg.new_parser();
vagrant_box_list_parser:set_flags(
	"--box-info", "-i",
	"--help", "-h"
);

-- vagrant box outdated
local vagrant_box_outdated_parser = clink.arg.new_parser();
vagrant_box_outdated_parser:set_flags("--global", "--help", "-h");
-- vagrant box remove
local vagrant_box_remove_parser = clink.arg.new_parser();
vagrant_box_remove_parser:set_flags(
	"--provider",
	"--box-version",
	"--help", "-h"
);
-- vagrant box repackage
local vagrant_box_repackage_parser = clink.arg.new_parser();
vagrant_box_repackage_parser:set_flags("--help", "-h");
-- vagrant box update
local vagrant_box_update_parser = clink.arg.new_parser();
vagrant_box_update_parser:set_flags(
	"--box",
	"--provider",
	"--help", "-h"
);
-------------------
-- vagrant box
-------------------
local vagrant_box_parser = clink.arg.new_parser()
vagrant_box_parser:set_flags("--help", "-h");
vagrant_box_parser:set_arguments({
	"add"..vagrant_box_add_parser,
	"list"..vagrant_box_list_parser,
	"outdated"..vagrant_box_outdated_parser,
	"remove"..vagrant_box_remove_parser,
	"repackage"..vagrant_box_repackage_parser,
	"update"..vagrant_box_update_parser
});
-------------------
-- vagrant connect
-------------------
local vagrant_connect_parser = clink.arg.new_parser()
vagrant_connect_parser:set_flags(
	"--disable-static-ip",
	"--static-ip",
	"--ssh",
	"--help", "-h"
);
-------------------
-- vagrant destroy
-------------------
local vagrant_destroy_parser = clink.arg.new_parser()
vagrant_destroy_parser:set_flags(
	"--force", "-f",
	"--help", "-h"
);
-------------------
-- vagrant halt
-------------------
local vagrant_halt_parser = clink.arg.new_parser()
vagrant_halt_parser:set_flags(
	"--force", "-f",
	"--help", "-h"
);
-------------------
-- vagrant help
-------------------
local vagrant_help_parser = clink.arg.new_parser()
vagrant_help_parser:set_arguments({
	"box",
	"connect",
	"destroy",
	"halt",
	"init",
	"list-commands",
	"login",
	"package",
	"plugin",
	"provision",
	"reload",
	"resume",
	"rsync",
	"rsync-auto",
	"share",
	"ssh",
	"ssh-config",
	"status",
	"suspend",
	"up"
});
-------------------
-- vagrant init
-------------------
local vagrant_init_parser = clink.arg.new_parser()
vagrant_init_parser:set_flags(
	"--output",
	"--help", "-h"
);
-------------------
-- vagrant list-commands
-------------------
local vagrant_list_commands_parser = clink.arg.new_parser()
vagrant_list_commands_parser:set_flags("--help", "-h");
-------------------
-- vagrant login
-------------------
local vagrant_login_parser = clink.arg.new_parser()
vagrant_login_parser:set_flags(
	"--check", "-c",
	"--logout", "-k",
	"--help", "-h"
);
-------------------
-- vagrant package
-------------------
local vagrant_package_parser = clink.arg.new_parser()
vagrant_package_parser:set_flags(
	"--base",
	"--output",
	"--include",
	"--vagrantfile",
	"--help", "-h"
);

-- vagrant plugin install
local vagrant_plugin_install_parser = clink.arg.new_parser()
vagrant_plugin_install_parser:set_flags(
	"--entry-point",
	"--plugin-prerelease",
	"--plugin-source",
	"--plugin-version",
	"--verbose",
	"--help", "-h"
);
-- vagrant plugin license
local vagrant_plugin_license_parser = clink.arg.new_parser()
vagrant_plugin_license_parser:set_flags("--help", "-h");
-- vagrant plugin list
local vagrant_plugin_list_parser = clink.arg.new_parser()
vagrant_plugin_list_parser:set_flags("--help", "-h");
-- vagrant plugin uninstall
local vagrant_plugin_uninstall_parser = clink.arg.new_parser()
vagrant_plugin_uninstall_parser:set_flags("--help", "-h");
-- vagrant plugin update
local vagrant_plugin_update_parser = clink.arg.new_parser()
vagrant_plugin_update_parser:set_flags("--help", "-h");
-------------------
-- vagrant plugin
-------------------
local vagrant_plugin_parser = clink.arg.new_parser()
vagrant_box_parser:set_flags("--help", "-h");
vagrant_box_parser:set_arguments({
	"install"..vagrant_plugin_install_parser,
	"license"..vagrant_plugin_license_parser,
	"list"..vagrant_plugin_list_parser,
	"uninstall"..vagrant_plugin_uninstall_parser,
	"update"..vagrant_plugin_update_parser
});
-------------------
-- vagrant provision
-------------------
local vagrant_provision_parser = clink.arg.new_parser()
vagrant_provision_parser:set_flags(
	"--provision-with",
	"--parallel", "--no-parallel",
	"--help", "-h"
);
-------------------
-- vagrant reload
-------------------
local vagrant_reload_parser = clink.arg.new_parser()
vagrant_reload_parser:set_flags(
	"--provision", "--no-provision",
	"--provision-with",
	"--help", "-h"
);
-------------------
-- vagrant resume
-------------------
local vagrant_resume_parser = clink.arg.new_parser()
vagrant_resume_parser:set_flags("--help", "-h");
-------------------
-- vagrant rsync
-------------------
local vagrant_rsync_parser = clink.arg.new_parser()
vagrant_rsync_parser:set_flags("--help", "-h");
-------------------
-- vagrant rsync-auto
-------------------
local vagrant_rsync_auto_parser = clink.arg.new_parser()
vagrant_rsync_auto_parser:set_flags("--help", "-h");
-------------------
-- vagrant share
-------------------
local vagrant_share_parser = clink.arg.new_parser()
vagrant_share_parser:set_flags(
	"--disable-http",
	"--http",
	"--https",
	"--ssh",
	"--ssh-no-password",
	"--ssh-port",
	"--ssh-once",
	"--help", "-h"
);
-------------------
-- vagrant ssh
-------------------
local vagrant_ssh_parser = clink.arg.new_parser()
vagrant_ssh_parser:set_flags(
	"--command", "-c",
	"--plain", "-p",
	"--help", "-h"
);
-------------------
-- vagrant ssh-config
-------------------
local vagrant_ssh_config_parser = clink.arg.new_parser()
vagrant_ssh_config_parser:set_flags("--host", "--help", "-h");
-------------------
-- vagrant status
-------------------
local vagrant_status_parser = clink.arg.new_parser()
vagrant_status_parser:set_flags("--help", "-h");
-------------------
-- vagrant suspend
-------------------
local vagrant_suspend_parser = clink.arg.new_parser()
vagrant_suspend_parser:set_flags("--help", "-h");
-------------------
-- vagrant up
-------------------
local vagrant_up_parser = clink.arg.new_parser()
vagrant_up_parser:set_flags(
	"--provision", "--no-provision", 
	"--provision-with",
	"--destroy-on-error", "--no-destroy-on-error", 
	"--parallel", "--no-parallel", 
	"--provider", 
	"--help", "-h"
);
--------------------------------------------------------
-- vagrant
--------------------------------------------------------
local vagrant_parser = clink.arg.new_parser();
vagrant_parser:set_flags(
	"--version", "-v",
	"--help", "-h"
);
vagrant_parser:set_arguments({
	"box"..vagrant_box_parser,
	"connect"..vagrant_connect_parser,
	"destroy"..vagrant_destroy_parser,
	"halt"..vagrant_halt_parser,
	"help"..vagrant_help_parser,
	"init"..vagrant_init_parser,
	"list-commands"..vagrant_list_commands_parser,
	"login"..vagrant_login_parser,
	"package"..vagrant_package_parser,
	"plugin"..vagrant_plugin_parser,
	"provision"..vagrant_provision_parser,
	"reload"..vagrant_reload_parser,
	"resume"..vagrant_resume_parser,
	"rsync"..vagrant_rsync_parser,
	"rsync-auto"..vagrant_rsync_auto_parser,
	"share"..vagrant_share_parser,
	"ssh"..vagrant_ssh_parser,
	"ssh-config"..vagrant_ssh_config_parser,
	"status"..vagrant_status_parser,
	"suspend"..vagrant_suspend_parser,
	"up"..vagrant_up_parser
})
clink.arg.register_parser("vagrant", vagrant_parser)
--------------------------------------------------------
-- Plugin
--------------------------------------------------------
-------------------
-- sahara
-------------------
if sahara then
	local vagrant_sahara_parser = clink.arg.new_parser()
	vagrant_sahara_parser:set_arguments({
		"sandbox"..clink.arg.new_parser():set_arguments({
			'on',
			'rollback',
			'commit',
			'status',
			'off'
		})
	})
	clink.arg.register_parser("vagrant", vagrant_sahara_parser)
end
-------------------
-- global-status
-------------------
if global_status then
	local vagrant_global_status_parser = clink.arg.new_parser()
	vagrant_global_status_parser:set_arguments({"global-status"})
	clink.arg.register_parser("vagrant", vagrant_global_status_parser)
end
-------------------
-- vagrant-multi-putty
-------------------
if multi_putty then
	local vagrant_multi_putty_parser = clink.arg.new_parser()
	vagrant_multi_putty_parser:set_arguments({"putty"})
	clink.arg.register_parser("vagrant", vagrant_multi_putty_parser)
end
-------------------
-- vagrant-vbox-snapshot
-------------------
if vbox_snapshot then
	local vagrant_vbox_snapshot_parser = clink.arg.new_parser()
	vagrant_vbox_snapshot_parser:set_arguments({
		"snapshot"..clink.arg.new_parser():set_arguments({
			'take',
			'list',
			'back',
			'delete',
			'go'
		})
	})
	clink.arg.register_parser("vagrant", vagrant_vbox_snapshot_parser)
end
-------------------
-- vagrant-vbguest
-------------------
if vbguest then
	local vagrant_vbguest_parser = clink.arg.new_parser()
	vagrant_vbguest_parser:set_arguments({
		"vbguest"..clink.arg.new_parser():set_flags(
			"--do"..clink.arg.new_parser():set_arguments({"start", "rebuild", "install"}),
			"--status",
			"--force", "-f",
			"--auto-reboot", "-b",
			"--no-remote", "-R",
			"--iso"
		)
	})
	clink.arg.register_parser("vagrant", vagrant_vbguest_parser)
end
