
return {
    "kiyoon/jupynium.nvim",
    build = "pip3 install --user .",
    dependencies = {
      "rcarriga/nvim-notify",   -- optional
      "stevearc/dressing.nvim", -- optional, UI for :JupyniumKernelSelect
    },

}
