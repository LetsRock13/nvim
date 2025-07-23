require("dooing").setup({

	-- Core settings
	save_path = vim.fn.stdpath("data") .. "/dooing_todos.json",

	-- Timestamp settings
	timestamp = {
		enabled = true,  -- Show relative timestamps (e.g., @5m ago, @2h ago)
	},

	-- Window settings
	window = {
		width = 55,         -- Width of the floating window
		height = 20,        -- Height of the floating window
		border = 'rounded', -- Border style
		position = 'center', -- Window position: 'right', 'left', 'top', 'bottom', 'center',
						   -- 'top-right', 'top-left', 'bottom-right', 'bottom-left'
		padding = {
			top = 1,
			bottom = 1,
			left = 2,
			right = 2,
		},
	},

	-- To-do formatting
	formatting = {
		pending = {
			icon = "○",
			format = { "icon", "notes_icon", "text", "due_date", "ect" },
		},
		in_progress = {
			icon = "◐",
			format = { "icon", "text", "due_date", "ect" },
		},
		done = {
			icon = "✓",
			format = { "icon", "notes_icon", "text", "due_date", "ect" },
		},
	},

	quick_keys = true,      -- Quick keys window
	
	notes = {
		icon = "📓",
	},

	scratchpad = {
		syntax_highlight = "markdown",
	},

	-- Per-project todos
	per_project = {
		enabled = true,                        -- Enable per-project todos
		default_filename = "dooing.json",      -- Default filename for project todos
		auto_gitignore = true,                -- Auto-add to .gitignore (true/false/"prompt")
		on_missing = "prompt",                 -- What to do when file missing ("prompt"/"auto_create")
	},

	-- Keymaps
	keymaps = {
		toggle_window = "<leader>td",          -- Toggle global todos
		open_project_todo = "<leader>tD",      -- Toggle project-specific todos
		new_todo = "i",
		toggle_todo = "x",
		delete_todo = "d",
		delete_completed = "D",
		close_window = "q",
		undo_delete = "u",
		add_due_date = "H",
		remove_due_date = "r",
		toggle_help = "?",
		toggle_tags = "t",
		toggle_priority = "<Space>",
		clear_filter = "c",
		edit_todo = "e",
		edit_tag = "e",
		edit_priorities = "p",
		delete_tag = "d",
		search_todos = "/",
		add_time_estimation = "T",
		remove_time_estimation = "R",
		import_todos = "I",
		export_todos = "E",
		remove_duplicates = "<leader>D",
		open_todo_scratchpad = "<leader>p",
		refresh_todos = "f",
		share_todos = "s",
	},

	calendar = {
		language = "de",
		icon = "",
		keymaps = {
			previous_day = "h",
			next_day = "l",
			previous_week = "k",
			next_week = "j",
			previous_month = "H",
			next_month = "L",
			select_day = "<CR>",
			close_calendar = "q",
		},
	},

	-- Priority settings
	priorities = {
		{
			name = "Niedrig",
			weight = 1,
		},
		{
			name = "Normal",
			weight = 2,
		},
		{
			name = "Hoch",
			weight = 3,
		},
	},
	priority_groups = {
		high = {
			members = { "Hoch" },
			color = "#bd1913",
			hl_group = "DiagnosticError",
		},
		medium = {
			members = { "Normal" },
			color = "#a69519",
			hl_group = "DiagnosticWarn",
		},
		low = {
			members = { "Niedrig" },
			color = "#918484",
			hl_group = "DiagnosticInfo",
		},
	},
	hour_score_value = 1/8,
	done_sort_by_completed_time = false,

})
