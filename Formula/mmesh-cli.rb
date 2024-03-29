# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class MmeshCli < Formula
  desc "mmesh-cli"
  homepage "https://mmesh.io"
  version "0.10.5"
  license "Apache License 2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mmesh/m-cli/releases/download/v0.10.5/mmesh-cli_0.10.5_darwin_arm64.tar.gz"
      sha256 "6e2ef71161241d6b83ee7ad2f4d3050125ad75a1df29844150adc75e8495b6e8"

      def install
        bin.install "mmeshctl"
        bash_completion.install "completions/mmeshctl.bash" => "mmeshctl"
        zsh_completion.install "completions/mmeshctl.zsh" => "_mmeshctl"
        fish_completion.install "completions/mmeshctl.fish"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/mmesh/m-cli/releases/download/v0.10.5/mmesh-cli_0.10.5_darwin_amd64.tar.gz"
      sha256 "2bc1a3be517f10fdb45bce239ac36df2170aacd04f0c749d248e2d3fe9d26d27"

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
      url "https://github.com/mmesh/m-cli/releases/download/v0.10.5/mmesh-cli_0.10.5_linux_arm64.tar.gz"
      sha256 "17b46f4a531232a75d3c33f09599d613ec1df9c92b534a5d5a2d4a773c42d9d2"

      def install
        bin.install "mmeshctl"
        bash_completion.install "completions/mmeshctl.bash" => "mmeshctl"
        zsh_completion.install "completions/mmeshctl.zsh" => "_mmeshctl"
        fish_completion.install "completions/mmeshctl.fish"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/mmesh/m-cli/releases/download/v0.10.5/mmesh-cli_0.10.5_linux_amd64.tar.gz"
      sha256 "58e7cf597e1b6d93b70264d7678a3b9c7e8b573495cb5c95ad79a03e6ff745e8"

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
