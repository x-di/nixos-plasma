{ ... }:
{
  programs.fish = {
    enable = true;
    shellAbbrs = {
      # ".." = "cd ..";
      nrs = "sudo nixos-rebuild switch";
      ls = "eza -al --color=always --group-directories-first"; # my preferred listing
      la = "eza -a --color=always --group-directories-first"; # all files and dirs
      ll = "eza -l --color=always --group-directories-first"; # long format
      lt = "eza -aT --color=always --group-directories-first"; # tree listing
      # l. = "eza -a | egrep '^\.'";
      grep = "grep --color=auto";
      egrep = "egrep --color=auto";
      fgrep = "fgrep --color=auto";
      cp = "cp -i";
      mv = "mv -i";
      rm = "rm -i";
      df = "df -h";
      free = "free -m";
      cat = "bat";
      gst = "git status";
      gco = "git checkout";
      gcm = "git commit -m";
      gpull = "git pull";
      gpush = "git push";
      nd = "mkdir -p";
      nf = "touch";
      yt = "yt-dlp";
      ytl = "yt-dlp -f 'bestvideo[height<=720][ext=mp4]+bestaudio[ext=m4a]/best[height<=720][ext=mp4]'";
      yth = "yt-dlp -f 'bestvideo[height<=1080][ext=mp4]+bestaudio[ext=m4a]/best[height<=1080][ext=mp4]'";
    };
    interactiveShellInit = ''
      			set fish_greeting # Disable greeting
      			set -gx PATH $PATH $HOME/.config/composer/vendor/bin
          	'';
  };
}
