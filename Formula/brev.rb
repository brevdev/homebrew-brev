# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Brev < Formula
  desc "CLI tool for managing workspaces provided by brev.dev"
  homepage "https://docs.brev.dev"
  version "0.6.65"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/brevdev/brev-cli/releases/download/v0.6.65/brev-cli_0.6.65_darwin_arm64.tar.gz"
      sha256 "333491ecbe8c7f04deef424c28e11a7a743104766b1be41d6a858bd37496098a"

      def install
        bin.install "brev"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/brevdev/brev-cli/releases/download/v0.6.65/brev-cli_0.6.65_darwin_amd64.tar.gz"
      sha256 "50948bd40cce3f9e96d14792ce689776e450bb015cb3d7d1f316f8bc9737d7bb"

      def install
        bin.install "brev"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/brevdev/brev-cli/releases/download/v0.6.65/brev-cli_0.6.65_linux_arm64.tar.gz"
      sha256 "cc9e40bf1e9f683b96f9e080e873a50ae6976f88e50b0c39a65d66511086ca06"

      def install
        bin.install "brev"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/brevdev/brev-cli/releases/download/v0.6.65/brev-cli_0.6.65_linux_amd64.tar.gz"
      sha256 "fe1ccd3f57d05b09a4714cb7da78aba52312854e2024d3a2499575771469dea8"

      def install
        bin.install "brev"
      end
    end
  end

  test do
    system "#{bin}/brev" "--version"
  end
end
