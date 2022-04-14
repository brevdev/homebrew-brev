# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Brev < Formula
  desc "CLI tool for managing workspaces provided by brev.dev"
  homepage "https://docs.brev.dev"
  version "0.6.46"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/brevdev/brev-cli/releases/download/v0.6.46/brev-cli_0.6.46_darwin_amd64.tar.gz"
      sha256 "2ce1263b0b18434ecadf83fcb6ac0a12f4a90e5234889dedd0a0b1cfcdc806c8"

      def install
        bin.install "brev"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/brevdev/brev-cli/releases/download/v0.6.46/brev-cli_0.6.46_darwin_arm64.tar.gz"
      sha256 "96efb99abb1cc7c96dd39b9e95a0de0fa0c99376ca6061d0c6df082eb3bd9879"

      def install
        bin.install "brev"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/brevdev/brev-cli/releases/download/v0.6.46/brev-cli_0.6.46_linux_arm64.tar.gz"
      sha256 "f65f5648d8bf11e837af2a88fa13204edefc6e45b7d0d59ef608f688ab8d85ad"

      def install
        bin.install "brev"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/brevdev/brev-cli/releases/download/v0.6.46/brev-cli_0.6.46_linux_amd64.tar.gz"
      sha256 "dcf4faaffe761871c3f4f8dc84c9a1cea5f324ab5bcd384816dec5b5bd851bc0"

      def install
        bin.install "brev"
      end
    end
  end

  test do
    system "#{bin}/brev" "--version"
  end
end
