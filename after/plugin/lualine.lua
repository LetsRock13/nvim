local job_indicator = { require("easy-dotnet.ui-modules.jobs").lualine }

require("lualine").setup {
  sections = {
    -- ...
    lualine_a = { "mode", job_indicator },
    -- ...
  },
}
