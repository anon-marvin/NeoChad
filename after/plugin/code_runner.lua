require('code_runner').setup({
    mode = "term",
    focus= true,
    startinsert =true,
    term={
        position ="belowright",
        size = 10,
    },
    filetype = {
        java = "cd $dir && javac $fileName && java $fileNameWithoutExt",
        python = "python3 -u",
        cpp = "cd $dir && g++ -o $fileNameWithoutExt $fileName && ./$fileNameWithoutExt",
        c = "cd $dir && gcc $fileName -o $fileNameWithoutExt && $dir/$fileNameWithoutExt",
        typescript = "deno run",
        rust = "cd $dir && rustc $fileName && $dir/$fileNameWithoutExt",
        sh = "bash",
        javascript = "node",
    },
})
