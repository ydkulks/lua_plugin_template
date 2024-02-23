local M = {}
local defaults = require("plugin_name.config")
-- If user did not setup config, use defaults
M.config = defaults

M.setup = function(update)
  -- replace defaults with user config
  M.config = vim.tbl_deep_extend('force', defaults, update)
end

return M
