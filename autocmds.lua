-- Detect and set the proper file type for ReasonML files
vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
  pattern = "*.re,*.rei",
  desc = "Detect and set the proper file type for ReasonML files",
  callback = function() vim.cmd "set filetype=reason" end,
})

-- Properly set the file type for ocaml interface files
vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
  pattern = "*.mli",
  desc = "Detect and set the proper file type for ocaml interface files",
  callback = function() vim.cmd ":set filetype=ocamlinterface" end,
})
