---@type MappingsTable
local M = {}

M.general = {
  n = {
    ["ss"] = { "<cmd> split <CR>", "Split", opts = { nowait = true } },
    ["sv"] = { "<cmd> vsplit <CR>", "VSplit", opts = { nowait = true } },
  },
  i = {
    ["<C-s>"] = { "<ESC><cmd>w<CR>", "Save", opts = { nowait = true } },
  },
}

M.nvimtree = {
  n = {
    ["<C-f>"] = { "<cmd> NvimTreeToggle <CR>", "Toggle nvimtree" },
  },
}

M.hop = {
  n = {
    ["fl"] = { "<cmd> HopLineStart <CR>", "Go line" },
    ["fw"] = { "<cmd> HopWord <CR>", "Go word" },
  },
}

M.trouble = {
  n = {
    ["<leader>xx"] = { "<cmd>TroubleToggle<cr>", "TroubleToggle", opts = { nowait = true } },
    ["<leader>xw"] = {
      "<cmd>TroubleToggle workspace_diagnostics<cr>",
      "Trouble of workspace",
      opts = { nowait = true },
    },
    ["<leader>xd"] = { "<cmd>TroubleToggle document_diagnostics<cr>", "Trouble of document", opts = { nowait = true } },
  },
}

M.Neogen = {
  n = {
    ["<leader>nf"] = {
      "<cmd>lua require('neogen').generate()<CR>",
      "General code comments",
      opts = { silent = true, noremap = true },
    },
  },
}

M.disabled = {
  n = {
    ["<C-n>"] = "",
  },
}

-- for tab buf
for i = 1, 9, 1 do
  vim.keymap.set("n", string.format("<A-%s>", i), function()
    vim.api.nvim_set_current_buf(vim.t.bufs[i])
  end)
end

-- more keybinds!

return M
