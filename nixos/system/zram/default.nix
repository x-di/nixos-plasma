{ ... }:
{
  zramSwap = {
    enable = true;
    algorithm = "zstd"; #zstd
    memoryPercent = 70; #150
  };
}
