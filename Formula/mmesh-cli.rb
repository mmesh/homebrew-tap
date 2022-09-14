# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class MmeshCli < Formula
  desc "mmesh-cli"
  homepage "https://mmesh.io"
  version "0.3.0"
  license "Apache License 2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mmesh/m-cli/releases/download/v0.3.0/mmesh-cli_0.3.0_darwin_arm64.tar.gz"
      sha256 "ef8f7740f00c14152c7c04dcec03c996cc77b973ade70ee5a98451db803556d5"

      def install
        bin.install "mmeshctl"
        bash_completion.install "completions/mmeshctl.bash" => "mmeshctl"
        zsh_completion.install "completions/mmeshctl.zsh" => "_mmeshctl"
        fish_completion.install "completions/mmeshctl.fish"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/mmesh/m-cli/releases/download/v0.3.0/mmesh-cli_0.3.0_darwin_amd64.tar.gz"
      sha256 "515ce739a8c638d97f8cec97797b724169a9e1d77d2187cd37ab176c2706a481"

      def install
        bin.install "mmeshctl"
        bash_completion.install "completions/mmeshctl.bash" => "mmeshctl"
        zsh_completion.install "completions/mmeshctl.zsh" => "_mmeshctl"
        fish_completion.install "completions/mmeshctl.fish"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/mmesh/m-cli/releases/download/v0.3.0/mmesh-cli_0.3.0_linux_arm64.tar.gz"
      sha256 "ab33dd6b3d727ea4d3ae2cfa4a3a8c459e01df261b42ee2849bcca17d900fe11"

      def install
        bin.install "mmeshctl"
        bash_completion.install "completions/mmeshctl.bash" => "mmeshctl"
        zsh_completion.install "completions/mmeshctl.zsh" => "_mmeshctl"
        fish_completion.install "completions/mmeshctl.fish"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/mmesh/m-cli/releases/download/v0.3.0/mmesh-cli_0.3.0_linux_amd64.tar.gz"
      sha256 "f3fbfa9c405dc193034bfaed8f3a28710d6717ff22e6b4080f8765105bbb4009"

      def install
        bin.install "mmeshctl"
        bash_completion.install "completions/mmeshctl.bash" => "mmeshctl"
        zsh_completion.install "completions/mmeshctl.zsh" => "_mmeshctl"
        fish_completion.install "completions/mmeshctl.fish"
      end
    end
  end

  test do
    system "#{bin}/mmeshctl version show"
  end
end
