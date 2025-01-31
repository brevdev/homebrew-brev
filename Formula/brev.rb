# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Brev < Formula
  desc "CLI tool for managing workspaces provided by brev.dev"
  homepage "https://docs.brev.dev"
  version "0.6.304"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/brevdev/brev-cli/releases/download/v0.6.304/brev-cli_0.6.304_darwin_arm64.tar.gz"
      sha256 "f0d378eb88ec3f4464f189dd71de14b2b39163d654e7ef40a3cbfd96e8accbdc"

      def install
        bin.install "brev"
        generate_completions_from_executable("#{bin}/brev", "completion")
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/brevdev/brev-cli/releases/download/v0.6.304/brev-cli_0.6.304_darwin_amd64.tar.gz"
      sha256 "b0133ec16f6a6720aa3bd7ba588418c5d8fb319b018dac86c98fcd6812088862"

      def install
        bin.install "brev"
        generate_completions_from_executable("#{bin}/brev", "completion")
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/brevdev/brev-cli/releases/download/v0.6.304/brev-cli_0.6.304_linux_arm64.tar.gz"
      sha256 "ec91eac83b12aa58bb6a28e2b3ba93d46e52eca814c076f9166e193e07873757"

      def install
        bin.install "brev"
        generate_completions_from_executable("#{bin}/brev", "completion")
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/brevdev/brev-cli/releases/download/v0.6.304/brev-cli_0.6.304_linux_amd64.tar.gz"
      sha256 "3caa0a7fdf9d85625c124367b270c3f8a3804bbdc7b5b0b498cdd3642d18a4f3"

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
