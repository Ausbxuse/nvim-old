local home = vim.loop.os_homedir()
local config = {
    cmd = {home .. "/.local/share/nvim/mason/bin/jdtls" },
    root_dir = vim.fs.dirname(vim.fs.find({'gradlew', '.git', 'mvnw'}, { upward = true })[1]),
}
require('jdtls').start_or_attach(config)
