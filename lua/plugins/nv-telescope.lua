local status_ok, telescope = pcall(require, "telescope")
if not status_ok then
  return
end

local actions = require "telescope.actions"


telescope.setup {
    pickers = {
    lsp_references = {
          theme = "dropdown",
            layout_config = {
                width = 0.5,
                prompt_position = "top",
                --horizontal = {mirror = true},
                --vertical = {mirror = false},
                --vertical = { width = 0.8 }
            },
        }
    },

    defaults = {

        prompt_prefix = "🔍 ",
        selection_caret = " ",
        path_display = { "smart" },
        --find_command = {'rg', '--no-heading', '--with-filename', '--line-number', '--column', '--smart-case'},


        mappings = {
            i = {
                --["<C-n>"] = actions.cycle_history_next,
                --["<C-p>"] = actions.cycle_history_prev,

                --["<C-j>"] = actions.move_selection_next,
                ["<C-j>"] = actions.move_selection_next,
                ["<C-k>"] = actions.move_selection_previous,
                --["<C-a>"] =

                ["<C-c>"] = actions.close,
                ["<D-o>"] = actions.close,
                ["<D-e>"] = actions.close,
                ["<S-D-F>"] = actions.close,
                ["<C-p>"] = actions.close,

                ["<Down>"] = actions.move_selection_next,
                ["<Up>"] = actions.move_selection_previous,

                ["<CR>"] = actions.select_default,
                ["<C-x>"] = actions.select_horizontal,
                ["<C-v>"] = actions.select_vertical,
                ["<C-t>"] = actions.select_tab,

                ["<C-u>"] = actions.preview_scrolling_up,
                ["<C-d>"] = actions.preview_scrolling_down,

                ["<PageUp>"] = actions.results_scrolling_up,
                ["<PageDown>"] = actions.results_scrolling_down,

                ["<Tab>"] = actions.toggle_selection + actions.move_selection_worse,
                ["<S-Tab>"] = actions.toggle_selection + actions.move_selection_better,
                ["<C-q>"] = actions.send_to_qflist + actions.open_qflist,
                ["<M-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
                ["<C-l>"] = actions.complete_tag,
                ["<C-_>"] = actions.which_key, -- keys from pressing <C-/>
            },
            n = {
                ["<esc>"] = actions.close,
                ["<CR>"] = actions.select_default,
                ["<C-x>"] = actions.select_horizontal,
                ["<C-v>"] = actions.select_vertical,
                ["<C-t>"] = actions.select_tab,
                ["<D-o>"] = actions.close,
                ["<S-D-F>"] = actions.close,

                ["<Tab>"] = actions.toggle_selection + actions.move_selection_worse,
                ["<S-Tab>"] = actions.toggle_selection + actions.move_selection_better,
                ["<C-q>"] = actions.send_to_qflist + actions.open_qflist,
                ["<M-q>"] = actions.send_selected_to_qflist + actions.open_qflist,

                ["j"] = actions.move_selection_next,
                ["k"] = actions.move_selection_previous,
                ["H"] = actions.move_to_top,
                ["M"] = actions.move_to_middle,
                ["L"] = actions.move_to_bottom,

                ["<Down>"] = actions.move_selection_next,
                ["<Up>"] = actions.move_selection_previous,
                ["gg"] = actions.move_to_top,
                ["G"] = actions.move_to_bottom,

                ["<C-u>"] = actions.preview_scrolling_up,
                ["<C-d>"] = actions.preview_scrolling_down,

                ["<PageUp>"] = actions.results_scrolling_up,
                ["<PageDown>"] = actions.results_scrolling_down,

                ["?"] = actions.which_key,
            },
        },
    },
    extensions = {
    -- Your extension configuration goes here:
    -- extension_name = {
    --   extension_config_key = value,
    -- }
    -- please take a look at the readme of the extension you want to configure
        packer = {
            theme = "ivy",
            layout_config = {
                height = .5
            }
        }
    }
}


--plugins
require('telescope').load_extension'projects'
require('telescope').load_extension('ultisnips')
require("telescope").load_extension "packer"

--[[
<C-o>	Open online repository
<C-f>	Open with find_files
<C-b>	Open with file_browser
<C-g>	Open with live_grep
--]]

require("project_nvim").setup {
      manual_mode = false,
      datapath = vim.fn.stdpath("data"),
      patterns = { ".git" },
      exclude_dirs = {'~//*'},
}



-- 'https://github.com/nvim-telescope/telescope.nvim'
-- help telescope
-- 'https://github.com/ahmedkhalf/project.nvim'



