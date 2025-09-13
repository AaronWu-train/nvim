-- plugins/comment.lua
return {
  "numToStr/Comment.nvim",
  config = function()
    require("Comment").setup()

    local api = require("Comment.api")

    -- Normal 模式：切換目前行
    vim.keymap.set("n", "<C-_>", function()
      api.toggle.linewise.current()
    end, { desc = "Toggle comment (line)" })

    -- Visual 模式：切換選取區塊
    vim.keymap.set("x", "<C-_>", "gc", { remap = true, desc = "Toggle comment (selection)" })
  end,
}
