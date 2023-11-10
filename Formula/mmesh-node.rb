# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class MmeshNode < Formula
  desc "mmesh-node agent"
  homepage "https://mmesh.io"
  version "0.6.1"
  license "Apache License 2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mmesh/m-node/releases/download/v0.6.1/mmesh-node_0.6.1_darwin_arm64.tar.gz"
      sha256 "fcea7af57b394411148a9ce2f7d01daad29c7e58f12610a3e71819d4b4021ae7"

      def install
        bin.install "mmesh-node"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/mmesh/m-node/releases/download/v0.6.1/mmesh-node_0.6.1_darwin_amd64.tar.gz"
      sha256 "305ccc712258296827cc595b786cbc5885d0fb0dfb13520a45a064c70f464670"

      def install
        bin.install "mmesh-node"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/mmesh/m-node/releases/download/v0.6.1/mmesh-node_0.6.1_linux_arm64.tar.gz"
      sha256 "f2acdcb659285c77bb81fb9fc173d5aec1ca8c116b7c1cbd53351190c3bbaaac"

      def install
        bin.install "mmesh-node"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/mmesh/m-node/releases/download/v0.6.1/mmesh-node_0.6.1_linux_amd64.tar.gz"
      sha256 "913a283560f7dcb884a2c61f79470f2eed0d6905c3b83f126ca87ebb24f6ce57"

      def install
        bin.install "mmesh-node"
      end
    end
  end
end
