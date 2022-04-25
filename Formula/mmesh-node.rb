# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class MmeshNode < Formula
  desc "mmesh-node agent"
  homepage "https://mmesh.io"
  version "0.1.0"
  license "Apache License 2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mmesh/m-node/releases/download/v0.1.0/mmesh-node_0.1.0_darwin_arm64.tar.gz"
      sha256 "a778b049b7d56200a268a8c1dbd5d9da15b8a52b4a4a167ab5b411ab018f16bd"

      def install
        bin.install "mmesh-node"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/mmesh/m-node/releases/download/v0.1.0/mmesh-node_0.1.0_darwin_amd64.tar.gz"
      sha256 "ae23e6c7e03923ffe980832bf5267414a8b88b8440abe26c2a278885139e5459"

      def install
        bin.install "mmesh-node"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/mmesh/m-node/releases/download/v0.1.0/mmesh-node_0.1.0_linux_arm64.tar.gz"
      sha256 "4e3b22c41fd641a859ed537800d107b22b72b0aed01a2c9bd76820a048f44a84"

      def install
        bin.install "mmesh-node"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/mmesh/m-node/releases/download/v0.1.0/mmesh-node_0.1.0_linux_amd64.tar.gz"
      sha256 "ae8d894e349797d53a1d9affcf2eb52d91868a606eff2a212e71738afcdde076"

      def install
        bin.install "mmesh-node"
      end
    end
  end
end
