

vim.notify = require("notify")
vim.notify("configuration synchronized successfully", "success")
-- Fungsi untuk membuat folder dan menampilkan notifikasi
  function create_folder(folder_name)
    local result = os.execute("mkdir -p " .. folder_name)
    if result then
      vim.notify("Folder '" .. folder_name .. "' berhasil dibuat!", "info")
    else
      vim.notify("Gagal membuat folder '" .. folder_name .. "'!", "error")
    end
  end

  -- Tambahkan perintah kustom untuk membuat folder
  vim.api.nvim_create_user_command('Mkdir', function(opts)
    create_folder(opts.args)
  end, { nargs = 1 })  -- Hanya menerima satu argumen


    -- Fungsi untuk menampilkan notifikasi setelah menyimpan
  local function notify_save()
    vim.notify("Data berhasil disimpan!", "info")
  end

  -- Autocommand untuk notifikasi saat menyimpan
  vim.api.nvim_create_autocmd("BufWritePost", {
    pattern = "*",
    callback = notify_save,
  })

 -- Fungsi untuk menampilkan notifikasi setelah menjalankan perintah
 function notify_after_shell(command)
  local result = vim.fn.system(command)

  if vim.v.shell_error == 0 then
    vim.notify("Perintah berhasil dijalankan: " .. command, "info")
  else
    vim.notify("Gagal menjalankan perintah: " .. command .. "\n" .. result, "error")
  end
end

-- Buat perintah kustom untuk menjalankan php artisan serve
vim.api.nvim_create_user_command('RunArtisan', function()
  notify_after_shell("php artisan serve")
end, {})

  -- Fungsi untuk membuat controller dan menampilkan notifikasi
  function create_laravel_controller(controller_name)
    local command = "php artisan make:controller " .. controller_name
    local result = vim.fn.system(command)

    if vim.v.shell_error == 0 then
      vim.notify("Controller '" .. controller_name .. "' berhasil dibuat!", "info")
    else
      vim.notify("Gagal membuat controller: " .. result, "error")
    end
  end

  -- Tambahkan perintah kustom untuk membuat controller
  vim.api.nvim_create_user_command('MakeController', function(opts)
    create_laravel_controller(opts.args)
  end, { nargs = 1 })  -- Memungkinkan satu argumen (nama controller)