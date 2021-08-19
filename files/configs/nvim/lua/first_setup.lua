local download_packer = function()
  if vim.fn.input("Download Packer? (y for yes)") ~= "y" then
    return
  end

  local install_path = vim.fn.stdpath 'data' .. '/site/pack/packer/start/packer.nvim'

  if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
    vim.fn.execute('!git clone https://github.com/wbthomason/packer.nvim ' .. install_path)
    print("You'll need to restart now")
  end
end

return function()
  if not pcall(require, 'packer') then
    download_packer()
    return true
  end

  return false
end
