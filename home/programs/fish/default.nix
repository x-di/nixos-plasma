{ pkgs, ... }:
{
  programs.fish = {
    enable = true;
    plugins = with pkgs.fishPlugins; [
      { name = "forgit"; src = forgit; }
      { name = "git"; src = plugin-git; }
      { name = "hydro"; src = hydro; }
      { name = "pisces"; src = pisces; }
      { name = "pure"; src = pure; }
      { name = "sponge"; src = sponge; }
    ];
    interactiveShellInit = ''
      			set fish_greeting # Disable greeting
      			set -gx PATH $PATH $HOME/.config/composer/vendor/bin
          	'';
    shellAbbrs = {
      # ".." = "cd ..";

      #nix
      nrs = "sudo nixos-rebuild switch";
      nrb = "sudo nixos-rebuild boot";
      #nix-shell
      ns = "nix-shell --command fish -p";

      #ls = "eza -al --color=always --group-directories-first"; # my preferred listing
      #la = "eza -a --color=always --group-directories-first"; # all files and dirs
      #ll = "eza -l --color=always --group-directories-first"; # long format
      #lt = "eza -aT --color=always --group-directories-first"; # tree listing
      # l. = "eza -a | egrep '^\.'";
      grep = "grep --color=auto";
      egrep = "egrep --color=auto";
      fgrep = "fgrep --color=auto";

      cp = "cp -i";
      mv = "mv -i";
      rm = "rm -i";

      df = "df -h";
      free = "free -m";

      #cat = "bat";

      nd = "mkdir -p";
      nf = "touch";

      #git ##gh = github, sh = sr.ht, gl = gitlab
      gad = "git add";
      gal = "git add --all";

      gb = "git branch";
      gbl = "git blame -b -w";
      gbr = "git branch --remote";

      gcm = "git commit -S -m";
      gcam = "git commit S --amend";

      gcb = "git checkout -b";
      gck = "git checkout main";

      gcf = "git config --list";
      gcl = "git clone --recursive";
      gcln = "git clean -fd";
      gcp = "git cherry-pick";

      gdf = "git diff";
      gdca = "git diff --cached";

      gfs = "git fetch sh";
      gfg = "git fetch gh";
      gfl = "git fetch gl";
      gfa = "git fetch --all --prune";

      gignore = "git update-index --assume-unchanged";

      gls = "git log --stat";
      glsp = "git log --stat -p";
      glg = "git log --graph";
      glo = "git log --decorate --oneline";

      gm = "git merge";
      gmsm = "git merge sh/main";
      gmgm = "git merge gh/main";
      gmlm = "git merge gl/main";
      gmt = "git mergetool --no-prompt";

      gpsm = "git push -u sh main";
      gpgm = "git push -u gh main";
      gplm = "git push -u gl main";

      gr = "git remote";
      gra = "git remote add";
      grv = "git remote --verbose";

      grh = "git reset HEAD";
      grhh = "git reset HEAD --hard";

      gst = "git status -sbu";
      gsps = "git show --pretty=short --show-signature";
      gsts = "git stash show --text";
      gsu = "git submodule update";

      gts = "git tag -s";
      gta = "git tag -a";

      gur = "git pull --rebase";
      gusm = "git pull sh main";
      gugm = "git pull gh main";
      gulm = "git pull gl main";


      #yt-dlp
      yt = "yt-dlp";
      ytm = "yt-dlp -o '%(title)s.%(ext)s' -f bestaudio";
      ytmv = "yt-dlp -o '%(title)s.%(ext)s' -f bestaudio -x --audio-format vorbis";
      ytl = "yt-dlp -o '%(title)s.%(ext)s' -f 'bestvideo[height<=720][ext=mp4]+bestaudio[ext=m4a]/best[height<=720][ext=mp4]'";
      ytlp = "yt-dlp -o '%(playlist_index)s - %(title)s.%(ext)s' -f 'bestvideo[height<=720]+bestaudio/best[height<=720]' --merge-output-format mp4";
      ytlpn = "yt-dlp -o '%(playlist_index)s - %(title)s.%(ext)s' -f 'bestvideo[height<=720]+bestaudio/best[height<=720]' --merge-output-format mp4 --playlist-start";
      yth = "yt-dlp -o '%(title)s.%(ext)s' -f 'bestvideo[height<=1080][ext=mp4]+bestaudio[ext=m4a]/best[height<=1080][ext=mp4]'";
      ythp = "yt-dlp -o '%(playlist_index)s - %(title)s.%(ext)s' -f 'bestvideo[height<=1080]+bestaudio/best[height<=1080]' --merge-output-format mp4";
      ythpn = "yt-dlp -o '%(playlist_index)s - %(title)s.%(ext)s' -f 'bestvideo[height<=1080]+bestaudio/best[height<=1080]' --merge-output-format mp4 --playlist-start";
    };
  };
}
