{ ... }:
{
  fileSystems = {
    "/" = {
      device = "/dev/disk/by-uuid/9d7fe692-1141-492b-8188-a10fe2681a73";
      fsType = "btrfs";
      options = [
        "compress=zstd:6"
        "noatime"
        "ssd"
        "space_cache=v2"
        "discard=async"
      ];
    };
    "/mnt/data" = {
      device = "/dev/disk/by-uuid/c5448a39-0bad-4cad-ad18-6a505d1b5d37";
      fsType = "btrfs";
      options = [
        "compress=zstd:6"
        "noatime"
        "ssd"
        "space_cache=v2"
        "discard=async"
      ];
    };
  };
}
