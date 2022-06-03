# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class MmeshNode < Formula
  desc "mmesh-node agent"
  homepage "https://mmesh.io"
  version "0.3.0"
  license "Apache License 2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mmesh/m-node/releases/download/v0.3.0/mmesh-node_0.3.0_darwin_arm64.tar.gz"
      sha256 "081035a323a5c4e1e358bdd0453c3f951751d794a44b8f427dd292493ba0f3cc"

      def install
        bin.install "mmesh-node"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/mmesh/m-node/releases/download/v0.3.0/mmesh-node_0.3.0_darwin_amd64.tar.gz"
      sha256 "d4c4a46eaa1309036e89eb1d0bf39f8f48cecdefa35defeefe00ff182516ed0b"

      def install
        bin.install "mmesh-node"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/mmesh/m-node/releases/download/v0.3.0/mmesh-node_0.3.0_linux_arm64.tar.gz"
      sha256 "72fa85fc72bba97b8edce7feb297fa131945a415fc891f3e57c823641001bb19"

      def install
        bin.install "mmesh-node"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/mmesh/m-node/releases/download/v0.3.0/mmesh-node_0.3.0_linux_amd64.tar.gz"
      sha256 "0551171514ed893092cbd2f953067696177da8c2a53d6534aa064f353ef28e11"

      def install
        bin.install "mmesh-node"
      end
    end
  end
end
