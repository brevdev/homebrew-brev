# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Brev < Formula
  desc "CLI tool for managing workspaces provided by brev.dev"
  homepage "https://docs.brev.dev"
  version "0.6.44"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/brevdev/brev-cli/releases/download/v0.6.44/brev-cli_0.6.44_darwin_arm64.tar.gz"
      sha256 "563754dd91d830e0c2a5ce302dab04f212a5d2f47c342ffc3e234e2a9e118af4"

      def install
        bin.install "brev"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/brevdev/brev-cli/releases/download/v0.6.44/brev-cli_0.6.44_darwin_amd64.tar.gz"
      sha256 "086b7f2e4e972d3b5056dd8f7bde7c62554051c20cd8f769bdc068cf70b91c60"

      def install
        bin.install "brev"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/brevdev/brev-cli/releases/download/v0.6.44/brev-cli_0.6.44_linux_arm64.tar.gz"
      sha256 "07f0260cb3000c5cbb0ffba9a82b590ee2914405710a86cde93ebdffcb758a4c"

      def install
        bin.install "brev"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/brevdev/brev-cli/releases/download/v0.6.44/brev-cli_0.6.44_linux_amd64.tar.gz"
      sha256 "ec59f81aa33b3c319c48bb828c4c7f4ef18d6d8b821a287ee06bbec9bf6ce4e8"

      def install
        bin.install "brev"
      end
    end
  end

  test do
    system "#{bin}/brev" "--version"
  end
end
