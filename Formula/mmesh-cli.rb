# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class MmeshCli < Formula
  desc "mmesh-cli"
  homepage "https://mmesh.io"
  version "0.5.1"
  license "Apache License 2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mmesh/m-cli/releases/download/v0.5.1/mmesh-cli_0.5.1_darwin_arm64.tar.gz"
      sha256 "1cdc9496d1475ce476eafcc7a12f99f9376df8612605ec348708532dae7da4fd"

      def install
        bin.install "mmeshctl"
        bash_completion.install "completions/mmeshctl.bash" => "mmeshctl"
        zsh_completion.install "completions/mmeshctl.zsh" => "_mmeshctl"
        fish_completion.install "completions/mmeshctl.fish"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/mmesh/m-cli/releases/download/v0.5.1/mmesh-cli_0.5.1_darwin_amd64.tar.gz"
      sha256 "6703530670dc15cd0bb6c4634d54614f54745a431ee97490d08ed8e91f7be099"

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
      url "https://github.com/mmesh/m-cli/releases/download/v0.5.1/mmesh-cli_0.5.1_linux_arm64.tar.gz"
      sha256 "c3482796cd8d5c1c839a0f586ca978bd7a79c68c1a6278124bb364042ead4eaa"

      def install
        bin.install "mmeshctl"
        bash_completion.install "completions/mmeshctl.bash" => "mmeshctl"
        zsh_completion.install "completions/mmeshctl.zsh" => "_mmeshctl"
        fish_completion.install "completions/mmeshctl.fish"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/mmesh/m-cli/releases/download/v0.5.1/mmesh-cli_0.5.1_linux_amd64.tar.gz"
      sha256 "a1f7ed2361a4eb0f9f9c29e83a02adba8b1d7c18fa793d8d4584842cc603341f"

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
