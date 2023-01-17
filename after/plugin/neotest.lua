require("neotest").setup({
    adapters = {
        require("neotest-rust") {
            args = { "--no-capture" },
        },
        require("neotest-plenary"),
    },
})

local neotest = require("neotest")

vim.keymap.set("n", "<leader>ta", function ()
    neotest.run.run(vim.fn.expand("%"))
end)
vim.keymap.set("n", "<leader>ts", function ()
    neotest.summary.toggle()
end)
vim.keymap.set("n", "<leader>to", function ()
    neotest.output.open({enter = true})
end)
vim.keymap.set("n", "<leader>tt", function ()
    neotest.run.run()
end)
