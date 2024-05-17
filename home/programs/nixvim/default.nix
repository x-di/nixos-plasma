{ pkgs, ... }:
{
  programs.nixvim = {
    enable = true;
    extraPlugins = with pkgs.vimPlugins; [
      gruvbox
    ];
    colorscheme = "gruvbox";
    opts = {
      number = true; # Show line numbers
      relativenumber = true; # Show relative line numbers
      shiftwidth = 2; # Tab width should be 2
    };
    plugins = {
      codeium-nvim.enable = true;
      lualine.enable = true;
      lsp-format.enable = true;
      lsp = {
        enable = true;
        servers = {
          cssls.enable = true;
          emmet_ls.enable = true;
          eslint.enable = true;
          gopls.enable = true;
          html.enable = true;
          intelephense.enable = true;
          lua-ls.enable = true;
          marksman.enable = true;
          nil_ls.enable = true;
          pest_ls.enable = true;
          prismals.enable = true;
          sqls.enable = true;
          tailwindcss.enable = true;
          tsserver.enable = true;
          vuels.enable = false;
        };
      };
      nvim-tree = {
        enable = true;
        autoReloadOnWrite = true;
        disableNetrw = true;
        respectBufCwd = true;
        filters.dotfiles = true;
        git.enable = true;
        view = {
          side = "left";
          width = 25;
        };
      };
      which-key = {
        enable = true;
        operators = {
          gc = "Comments";
        };
        registrations = {
          "<c-h>" = [ "<c-w>h" "Move top" ];
          "<c-j>" = [ "<c-w>j" "Move down" ];
          "<c-k>" = [ "<c-w>k" "Move left" ];
          "<c-l>" = [ "<c-w>l" "Move right" ];

          "<up>" = [ "<cmd>resize +1<CR>" "resize window up" ];
          "<down>" = [ "<cmd>resize -1<CR>" "resize window down" ];
          "<left>" = [ "<cmd>vertical resize +1<CR>" "resize window left" ];
          "<right>" = [ "<cmd>vertical resize -1<CR>" "resize window right" ];

          "<c-n>" = [ "<cmd>NvimTreeToggle<CR>" "Open Tree in left side" ];
        };
      };
    };
  };
}
