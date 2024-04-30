{ ... }:
{
  programs.kitty = {
    enable = true;
    shellIntegration.enableFishIntegration = true;
    theme = "One Dark";
    font = {
      name = "Cascadia Code";
      size = 14;
    };
    extraConfig = ''
      			shell fish
      			tab_bar_edge top
      			tab_bar_style slant
      			cursor_shape beam
      			cursor_beam_thickness 2
      			sync_to_monitor yes
      			wayland_titlebar_color #1c2836
      			tab_title_template "{index}: {title[title.rfind('/')+1:]}"
      			window_padding_width 5 10
      			enable_audio_bell no
      		'';
    keybindings = {
      "ctrl+page_up" = "scroll_page_up";
      "ctrl+page_down" = "scroll_page_down";
      "alt+page_up" = "scroll_home";
      "alt+page_down" = "scroll_end";
      "alt+d" = "new_window_with_cwd";
      "alt+t" = "new_tab_with_cwd";
    };
  };
}
