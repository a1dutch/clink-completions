local jekyll_hyde_parser = clink.arg.new_parser(
"--source",
"--destination",
"--safe",
"--plugins",
"--layouts",
"--help",
"--version",
"--trace"
);

local jekyll_build_parser = clink.arg.new_parser(
"--config",
"--future",
"--limit_posts",
"--watch",
"--no-watch",
"--force_polling",
"--lsi",
"--drafts",
"--unpublished",
"--quiet",
"--verbose",
"--help",
"--version",
"--trace"
);

local jekyll_serve_parser = clink.arg.new_parser();
jekyll_serve_parser:set_flags(
"--config",
"--future",
"--watch",
"--no-watch",
"--force_polling",
"--drafts",
"--unpublished",
"--quiet",
"--verbose",
"--detach",
"--port",
"--host",
"--baseurl",
"--skip-initial-build",
"--help",
"--version",
"--trace"
);

local jekyll_new_parser = clink.arg.new_parser(
"--force",
"--blank",
"--help",
"--version",
"--trace"
);

local jekyll_docs_parser = clink.arg.new_parser(
"--port",
"--host",
"--help",
"--version",
"--trace"
);

local jekyll_parser = clink.arg.new_parser();
jekyll_parser:set_flags("--help",
"--version"
);

jekyll_parser:set_arguments({
	"docs"..jekyll_hyde_parser,
	"doctor"..jekyll_hyde_parser,
	"hyde"..jekyll_hyde_parser,
	"build"..jekyll_build_parser,
	"serve"..jekyll_serve_parser,
	"server"..jekyll_serve_parser,
	"new"..jekyll_new_parser,
	"help"..jekyll_help_parser,
});

clink.arg.register_parser("jekyll", jekyll_parser)