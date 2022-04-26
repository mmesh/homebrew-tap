# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class MmeshCli < Formula
  desc "mmesh-cli"
  homepage "https://mmesh.io"
  version "0.1.0"
  license "Apache License 2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mmesh/m-cli/releases/download/v0.1.0/mmesh-cli_0.1.0_darwin_arm64.tar.gz"
      sha256 "bb8376f0440c59a130d2fa234d94032eef2c3599e0aadd3b4c2249f432145fa3"

      def install
        bin.install "mmeshctl"
        bash_completion.install "completions/mmeshctl.bash" => "mmeshctl"
        zsh_completion.install "completions/mmeshctl.zsh" => "_mmeshctl"
        fish_completion.install "completions/mmeshctl.fish"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/mmesh/m-cli/releases/download/v0.1.0/mmesh-cli_0.1.0_darwin_amd64.tar.gz"
      sha256 "93830db8b58e0ed71f6abf33ba98f27fddf6479648dfb9fce8d58bd6c83a5228"

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
      url "https://github.com/mmesh/m-cli/releases/download/v0.1.0/mmesh-cli_0.1.0_linux_arm64.tar.gz"
      sha256 "a56ec948fcca289c5f31906cc578f0047ed0c7b234fe8fc4887d44bd82e832d3"

      def install
        bin.install "mmeshctl"
        bash_completion.install "completions/mmeshctl.bash" => "mmeshctl"
        zsh_completion.install "completions/mmeshctl.zsh" => "_mmeshctl"
        fish_completion.install "completions/mmeshctl.fish"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/mmesh/m-cli/releases/download/v0.1.0/mmesh-cli_0.1.0_linux_amd64.tar.gz"
      sha256 "1be0db997f8c00ff546b52b378e62fa18499c3581942c9cedd4e66b49d2ecae9"

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
