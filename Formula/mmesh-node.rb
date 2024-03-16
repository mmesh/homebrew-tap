# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class MmeshNode < Formula
  desc "mmesh-node agent"
  homepage "https://mmesh.io"
  version "0.13.1"
  license "Apache License 2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mmesh/m-node/releases/download/v0.13.1/mmesh-node_0.13.1_darwin_arm64.tar.gz"
      sha256 "aa26b3532a9fdcc8d28de697763a3d47143c443a1446298b0acd7c9892409db5"

      def install
        bin.install "mmesh-node"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/mmesh/m-node/releases/download/v0.13.1/mmesh-node_0.13.1_darwin_amd64.tar.gz"
      sha256 "02bb99214731c0d6f183e5f05f15899cd5676bf873def3996e056cb6f3c4f4b6"

      def install
        bin.install "mmesh-node"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/mmesh/m-node/releases/download/v0.13.1/mmesh-node_0.13.1_linux_arm64.tar.gz"
      sha256 "5b7c8847c43e9d7ce6ff64df5014ac749dae32124f5849336a74b1ed18717265"

      def install
        bin.install "mmesh-node"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/mmesh/m-node/releases/download/v0.13.1/mmesh-node_0.13.1_linux_amd64.tar.gz"
      sha256 "5f926649ffce67162482bb8651698df021aa4100ab11e0282b8e18da6ef9c853"

      def install
        bin.install "mmesh-node"
      end
    end
  end
end
