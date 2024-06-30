function ColorMyPencils(color)
    color = color or "gruvbox"
    vim.cmd.colorscheme(color)

    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

    vim.api.nvim_set_hl(0, 'LineNrAbove', { fg='grey' })
    vim.api.nvim_set_hl(0, 'LineNr', { fg='green' })
    vim.api.nvim_set_hl(0, 'LineNrBelow', { fg='grey' })
end

ColorMyPencils()

