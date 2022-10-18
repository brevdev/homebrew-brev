# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Brev < Formula
  desc "CLI tool for managing workspaces provided by brev.dev"
  homepage "https://docs.brev.dev"
  version "0.6.123"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/brevdev/brev-cli/releases/download/v0.6.123/brev-cli_0.6.123_darwin_arm64.tar.gz"
      sha256 "7380123b9e8755b5d46d4569177ecff14c789d76e3879c89f3ac1d3618809516"

      def install
        bin.install "brev"
        generate_completions_from_executable("#{bin}/brev", "completion")
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/brevdev/brev-cli/releases/download/v0.6.123/brev-cli_0.6.123_darwin_amd64.tar.gz"
      sha256 "02bcb8600658a5f425a5e6c9c49d34c847ccfb6b397863221f91166ad0e414fa"

      def install
        bin.install "brev"
        generate_completions_from_executable("#{bin}/brev", "completion")
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/brevdev/brev-cli/releases/download/v0.6.123/brev-cli_0.6.123_linux_arm64.tar.gz"
      sha256 "7fb52aba3ad20c762ef52a685fddeaa2191663f96a56a151983917592e2149d2"

      def install
        bin.install "brev"
        generate_completions_from_executable("#{bin}/brev", "completion")
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/brevdev/brev-cli/releases/download/v0.6.123/brev-cli_0.6.123_linux_amd64.tar.gz"
      sha256 "d0947a2710991938879f94874094e39dab4befa6a4fe6161d81b49bf11bb7945"

      def install
        bin.install "brev"
        generate_completions_from_executable("#{bin}/brev", "completion")
      end
    end
  end

  test do
    system "#{bin}/brev" "--version"
  end
end
