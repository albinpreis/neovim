return {
  'goolord/alpha-nvim',
  dependencies = {
    'nvim-tree/nvim-web-devicons',
    'echasnovski/mini.icons',
    'nvim-lua/plenary.nvim',
  },

  config = function()
    require('alpha').setup(require('alpha.themes.theta').config)
  end,
}
