{ ... }:
{
  zramSwap = {
    enable = true;
    algorithm = "lz4"; #zstd
    memoryPercent = 100; #150
  };
}
