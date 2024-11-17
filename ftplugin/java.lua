local home = os.getenv 'USERPROFILE'
local jdtls_path = home .. '\\AppData\\Local\\nvim-data\\mason\\packages\\jdtls'
local workspace_path = home .. '\\AppData\\Local\\nvim-data\\workspace\\' .. vim.fn.fnamemodify(vim.fn.getcwd(), ':p:h:t')

local config = {
  cmd = {
    'C:\\Program Files\\Java\\jdk-17\\bin\\java.exe',
    '-Declipse.application=org.eclipse.jdt.ls.core.id1',
    '-Dosgi.bundles.defaultStartLevel=4',
    '-Declipse.product=org.eclipse.jdt.ls.core.product',
    '-Xmx1g',
    '--add-modules=ALL-SYSTEM',
    '--add-opens',
    'java.base/java.util=ALL-UNNAMED',
    '--add-opens',
    'java.base/java.lang=ALL-UNNAMED',
    '-jar',
    jdtls_path .. '\\plugins\\org.eclipse.equinox.launcher_1.6.900.v20240613-2009.jar',
    '-configuration',
    jdtls_path .. '\\config_win',
    '-data',
    workspace_path,
  },
  root_dir = require('jdtls.setup').find_root { '.git', 'mvnw', 'gradlew' },
}

require('jdtls').start_or_attach(config)
