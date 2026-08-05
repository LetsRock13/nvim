require("kotlin").setup({
		-- Optional: Specify root markers for multi-module projects
		-- Default: { "build.gradle", "build.gradle.kts", "pom.xml", "mvnw" }
		root_markers = {
			"gradlew",
			".git",
			"mvnw",
			"settings.gradle",
		},
		jvm_args = {
			"-Xmx4g",
		},
		-- Optional: Configure inlay hints (requires kotlin-lsp v261+)
		-- All settings default to true, set to false to disable specific hints
		inlay_hints = {
			enabled = false,  -- Enable inlay hints (auto-enable on LSP attach)
			parameters = true,  -- Show parameter names
			parameters_compiled = true,  -- Show compiled parameter names
			parameters_excluded = false,  -- Show excluded parameter names
			types_property = true,  -- Show property types
			types_variable = true,  -- Show local variable types
			function_return = true,  -- Show function return types
			function_parameter = true,  -- Show function parameter types
			lambda_return = true,  -- Show lambda return types
			lambda_receivers_parameters = true,  -- Show lambda receivers/parameters
			value_ranges = false,  -- Show value ranges
			kotlin_time = true,  -- Show kotlin.time warnings
		}
	}
)

