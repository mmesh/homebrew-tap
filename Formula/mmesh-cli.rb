# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class MmeshCli < Formula
  desc "mmesh-cli"
  homepage "https://mmesh.io"
  version "0.9.1"
  license "Apache License 2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mmesh/m-cli/releases/download/v0.9.1/mmesh-cli_0.9.1_darwin_arm64.tar.gz"
      sha256 "dce7db41b7bb327d2fe145e577f41e00180cdaffb2a08cbc5bf79b2ad01fb977"

      def install
        bin.install "mmeshctl"
        bash_completion.install "completions/mmeshctl.bash" => "mmeshctl"
        zsh_completion.install "completions/mmeshctl.zsh" => "_mmeshctl"
        fish_completion.install "completions/mmeshctl.fish"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/mmesh/m-cli/releases/download/v0.9.1/mmesh-cli_0.9.1_darwin_amd64.tar.gz"
      sha256 "c2b4f5e539bef39d903f9aa7a591a81a289db581ddb008236b1518a3e9e0b1fa"

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
      url "https://github.com/mmesh/m-cli/releases/download/v0.9.1/mmesh-cli_0.9.1_linux_arm64.tar.gz"
      sha256 "04238f767c44199ae537cc2525d13fc8c921fa377a3fcc29f853246681b79f97"

      def install
        bin.install "mmeshctl"
        bash_completion.install "completions/mmeshctl.bash" => "mmeshctl"
        zsh_completion.install "completions/mmeshctl.zsh" => "_mmeshctl"
        fish_completion.install "completions/mmeshctl.fish"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/mmesh/m-cli/releases/download/v0.9.1/mmesh-cli_0.9.1_linux_amd64.tar.gz"
      sha256 "bb3e491c459695676078cfcff6d7c3763b798512f695ba4bd644287bc3e845e7"

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
