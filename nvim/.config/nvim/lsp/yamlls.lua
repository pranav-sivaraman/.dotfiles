return {
	cmd = { "yaml-language-server", "--stdio" },
	filtypes = { "yaml", "yaml.docker-compose", "yaml.gitlab" },
	settings = {
		redhat = { telemetry = { enabled = false } },
	},
}
