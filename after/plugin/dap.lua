local function rebuild_project(co, path)
  local spinner = require("easy-dotnet.ui-modules.spinner").new()
  spinner:start_spinner "Building"
  vim.fn.jobstart(string.format("dotnet build %s", path), {
    on_exit = function(_, return_code)
      if return_code == 0 then
        spinner:stop_spinner "Built successfully"
      else
        spinner:stop_spinner("Build failed with exit code " .. return_code, vim.log.levels.ERROR)
        error "Build failed"
      end
      coroutine.resume(co)
    end,
  })
  coroutine.yield()
end

local dap = require "dap"

-- Keymaps for controlling the debugger
vim.keymap.set("n", "q", function()
  dap.terminate()
  dap.clear_breakpoints()
end, { desc = "Terminate and clear breakpoints" })

vim.keymap.set("n", "<F5>", dap.continue, { desc = "Start/continue debugging" })
vim.keymap.set("n", "<F10>", dap.step_over, { desc = "Step over" })
vim.keymap.set("n", "<F11>", dap.step_into, { desc = "Step into" })
vim.keymap.set("n", "<F12>", dap.step_out, { desc = "Step out" })
vim.keymap.set("n", "<leader>b", dap.toggle_breakpoint, { desc = "Toggle breakpoint" })
vim.keymap.set("n", "<leader>dO", dap.step_over, { desc = "Step over (alt)" })
vim.keymap.set("n", "<leader>dC", dap.run_to_cursor, { desc = "Run to cursor" })
vim.keymap.set("n", "<leader>dr", dap.repl.toggle, { desc = "Toggle DAP REPL" })
vim.keymap.set("n", "<leader>dj", dap.down, { desc = "Go down stack frame" })
vim.keymap.set("n", "<leader>dk", dap.up, { desc = "Go up stack frame" })

-- .NET specific setup using `easy-dotnet`
require("easy-dotnet.netcoredbg").register_dap_variables_viewer() -- special variables viewer specific for .NET
local dotnet = require("easy-dotnet")
local debug_dll = nil

local function ensure_dll()
  if debug_dll ~= nil then
	return debug_dll
  end
  local dll = dotnet.get_debug_dll(true)
  debug_dll = dll
  return dll
end

for _, value in ipairs({ "cs", "fsharp" }) do
  dap.configurations[value] = {
	{
	  type = "coreclr",
	  name = "Program",
	  request = "launch",
	  env = function()
		local dll = ensure_dll()
		local vars = dotnet.get_environment_variables(dll.project_name, dll.relative_project_path)
		return vars or nil
	  end,
	  program = function()
		local dll = ensure_dll()
		local co = coroutine.running()
		rebuild_project(co, dll.project_path)
		return dll.relative_dll_path
	  end,
	  cwd = function()
		local dll = ensure_dll()
		return dll.relative_project_path
	  end
	},
	{
	  type = "coreclr",
	  name = "Test",
	  request = "attach",
	  processId = function()
		local res = require("easy-dotnet").experimental.start_debugging_test_project()
		return res.process_id
	  end
	}
  }
end

-- Reset debug_dll after each terminated session
dap.listeners.before['event_terminated']['easy-dotnet'] = function()
  debug_dll = nil
end

dap.adapters.coreclr = {
  type = "executable",
  command = "netcoredbg",
  args = { "--interpreter=vscode" },
}
