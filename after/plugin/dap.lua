--local dap = require('dap')
require('dap-python').setup('/home/guy/bmc/saas_deployment_scripts/venv/bin/python3')
--dap.adapters.python = {
--  type = 'executable';
--  command = '/usr/bin/python3';
--  args = { '-m', 'debugpy.adapter' };
--}
table.insert(require('dap').configurations.python, {
  type = 'python',
  request = 'launch',
  name = 'My custom launch configuration',
  program = '${file}',
  -- ... more options, see https://github.com/microsoft/debugpy/wiki/Debug-configuration-settings
})
vim.fn.sign_define('DapBreakpoint',{ text ='🟥', texthl ='', linehl ='', numhl =''})
vim.fn.sign_define('DapStopped',{ text ='▶️', texthl ='', linehl ='', numhl =''})
