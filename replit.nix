{ pkgs }: {
    deps = [
        pkgs.sudo
        pkgs.sqlite.bin
        pkgs.nodejs
        pkgs.yarn
        pkgs.bashInteractive
        pkgs.man
    ];
}