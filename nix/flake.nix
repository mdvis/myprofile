{
  description = "Ai Copilot";

  nixConfig = {
    substituters = [
      "https://mirrors.tuna.tsinghua.edu.cn/nix-channels/store"
      "https://cache.nixos.org"
    ];
    trusted-public-keys = [
      "cache.nixos.org-1:6NCHdD59X431o0gWypbMrAURkbJ16ZPMQFGspcDShjY="
    ];
  };

  inputs = {
    nixpkgs.url = "git+https://mirrors.tuna.tsinghua.edu.cn/git/nixpkgs?ref=nixos-unstable&shallow=1";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, flake-utils }:
  flake-utils.lib.eachDefaultSystem (system:
  let
    pkgs = import nixpkgs {
      inherit system;
      config.allowUnfree = true;
    };

    toolList = with pkgs; [
      claude-code
      gemini-cli
      goose-cli
      opencode
      codex
    ];

    tools = with pkgs; [
      neovim
    ];
  in {
    packages.tools = pkgs.writeShellApplication {
      name = "tools";
      runtimeInputs = tools;
      text = ''
            echo "running tools"
      '';
    };

    devShells.tools = pkgs.mkShell {
      packages = tools;
      shellHook = ''
          zsh
          '';
    };

    packages.default = pkgs.writeShellApplication {
      name = "ai-copilot";
      runtimeInputs = toolList;
      text = ''
            echo "running ai-copilot"
      '';
    };

    devShells.default = pkgs.mkShell {
      packages = toolList;
      shellHook = ''
          zsh
          '';
    };
  }
  );
}
