local ok, bufferline = pcall(require, "bufferline")
if not ok then
  return
end

bufferline.setup({
  options = {
    mode = "buffers",
    style_preset = bufferline.style_preset.default,
    themable = true,
    always_show_bufferline = false,
    show_buffer_close_icons = true,
    show_close_icon = false,
    diagnostics = false,
    close_command = function(n)
      local snacks = package.loaded["snacks"]
      if snacks and snacks.bufdelete then
        snacks.bufdelete(n)
      else
        vim.cmd("bdelete! " .. n)
      end
    end,
    right_mouse_command = function(n)
      local snacks = package.loaded["snacks"]
      if snacks and snacks.bufdelete then
        snacks.bufdelete(n)
      else
        vim.cmd("bdelete! " .. n)
      end
    end,
    offsets = {
      {
        filetype = "snacks_layout_box",
        text = "File Explorer",
        highlight = "Directory",
        text_align = "left",
      },
    },
  },
})
