M = {}

local common_opts = {
    -- No titles
  prompt_title = false,
  results_title = false,
  preview_title = false,

  prompt_prefix = " 󰍉  ",
  selection_caret = "󰅂 ",

  sorting_strategy = "ascending",
  layout_strategy = "vertical",
  layout_config = {
    width = 0.8,
    prompt_position = "top",
    preview_height = 0.5,
  }
}

M.find_files = function()
  local opts = vim.deepcopy(common_opts)
	opts.previewer = false
  require("telescope.builtin").find_files(opts)
end

M.live_grep = function()
  local opts = vim.deepcopy(common_opts)
  require("telescope.builtin").live_grep(opts)
end

M.buffers = function()
  local opts = vim.deepcopy(common_opts)
  opts.show_all_buffers = true
  opts.sort_lastused = true
  require("telescope.builtin").buffers(opts)
end

M.spell_suggest = function()
  local opts = vim.deepcopy(common_opts)
  require("telescope.builtin").spell_suggest(opts)
end

return M
