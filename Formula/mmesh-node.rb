# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class MmeshNode < Formula
  desc "mmesh-node agent"
  homepage "https://mmesh.io"
  version "0.10.2"
  license "Apache License 2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mmesh/m-node/releases/download/v0.10.2/mmesh-node_0.10.2_darwin_arm64.tar.gz"
      sha256 "0181cdf44c50039ae89dc7bc58b558515b3d2237d0f1dc89ee2599b18e874973"

      def install
        bin.install "mmesh-node"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/mmesh/m-node/releases/download/v0.10.2/mmesh-node_0.10.2_darwin_amd64.tar.gz"
      sha256 "2d965b718354f0e234d2af6f17450c0b6a9da82fe25d9396bd3eb75066e19d41"

      def install
        bin.install "mmesh-node"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/mmesh/m-node/releases/download/v0.10.2/mmesh-node_0.10.2_linux_arm64.tar.gz"
      sha256 "75e5d4539a8de35baa45dd609e0915c1ef54450acc093858831c40cc56fddc45"

      def install
        bin.install "mmesh-node"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/mmesh/m-node/releases/download/v0.10.2/mmesh-node_0.10.2_linux_amd64.tar.gz"
      sha256 "310b56be640b77e35a598c89d7fa1ebedf9aa583177c8a5b7a1b03c5c77c14f2"

      def install
        bin.install "mmesh-node"
      end
    end
  end
end
