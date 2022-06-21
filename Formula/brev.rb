# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Brev < Formula
  desc "CLI tool for managing workspaces provided by brev.dev"
  homepage "https://docs.brev.dev"
  version "0.6.78"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/brevdev/brev-cli/releases/download/v0.6.78/brev-cli_0.6.78_darwin_amd64.tar.gz"
      sha256 "8f14898c02a8eeccf602366f7dfd8a887443d151e9b811233022c7bf7a58fbda"

      def install
        bin.install "brev"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/brevdev/brev-cli/releases/download/v0.6.78/brev-cli_0.6.78_darwin_arm64.tar.gz"
      sha256 "b8d9021722f3dd21a1adcd7fdd90c515efdb040251bc5a7290a8ed56a5e0b46e"

      def install
        bin.install "brev"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/brevdev/brev-cli/releases/download/v0.6.78/brev-cli_0.6.78_linux_arm64.tar.gz"
      sha256 "b90a0eefc6cfe181c3eb4faab7d1f1e76c1a615dda6a2e2001744e729c1b947d"

      def install
        bin.install "brev"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/brevdev/brev-cli/releases/download/v0.6.78/brev-cli_0.6.78_linux_amd64.tar.gz"
      sha256 "6dd737b73ffdfdfdb1f2e236a11dae2c699d191586d961768e3de581c8410655"

      def install
        bin.install "brev"
      end
    end
  end

  test do
    system "#{bin}/brev" "--version"
  end
end
