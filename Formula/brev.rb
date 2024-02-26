# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Brev < Formula
  desc "CLI tool for managing workspaces provided by brev.dev"
  homepage "https://docs.brev.dev"
  version "0.6.276"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/brevdev/brev-cli/releases/download/v0.6.276/brev-cli_0.6.276_darwin_arm64.tar.gz"
      sha256 "13258d93f949d0e9fbcc968877dcc99a62b6236ff5d2d5966f5ddb74193c6dad"

      def install
        bin.install "brev"
        generate_completions_from_executable("#{bin}/brev", "completion")
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/brevdev/brev-cli/releases/download/v0.6.276/brev-cli_0.6.276_darwin_amd64.tar.gz"
      sha256 "804783d8881a00b0e15983a37da49d307a95c126a9f7f82d68eb897aa6e01d8f"

      def install
        bin.install "brev"
        generate_completions_from_executable("#{bin}/brev", "completion")
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/brevdev/brev-cli/releases/download/v0.6.276/brev-cli_0.6.276_linux_arm64.tar.gz"
      sha256 "67342831ecd15d6664f40e9077c64f95031199a0bc47424e366a6c5ad1840bb0"

      def install
        bin.install "brev"
        generate_completions_from_executable("#{bin}/brev", "completion")
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/brevdev/brev-cli/releases/download/v0.6.276/brev-cli_0.6.276_linux_amd64.tar.gz"
      sha256 "768295f2232ffe7093a8571590915bd76d3299ed566d782ee6d30b085760be8a"

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
