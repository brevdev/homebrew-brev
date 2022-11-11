# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Brev < Formula
  desc "CLI tool for managing workspaces provided by brev.dev"
  homepage "https://docs.brev.dev"
  version "0.6.162"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/brevdev/brev-cli/releases/download/v0.6.162/brev-cli_0.6.162_darwin_arm64.tar.gz"
      sha256 "d260eb2ff92cb48ca2f52e2fa5ab739fd2381f9bf17acd92fa14799cc3aa7931"

      def install
        bin.install "brev"
        generate_completions_from_executable("#{bin}/brev", "completion")
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/brevdev/brev-cli/releases/download/v0.6.162/brev-cli_0.6.162_darwin_amd64.tar.gz"
      sha256 "e61d8a8dd1cecb12fee6f84c57f5bd838f924642a4839671eb8f42e0bd92ca54"

      def install
        bin.install "brev"
        generate_completions_from_executable("#{bin}/brev", "completion")
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/brevdev/brev-cli/releases/download/v0.6.162/brev-cli_0.6.162_linux_arm64.tar.gz"
      sha256 "81041b3bfb36226a829789d6c85d73c26d66f8480c9129b88745cef988f1dcb1"

      def install
        bin.install "brev"
        generate_completions_from_executable("#{bin}/brev", "completion")
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/brevdev/brev-cli/releases/download/v0.6.162/brev-cli_0.6.162_linux_amd64.tar.gz"
      sha256 "e4f324a52f75897cd5d96fef8d7a2dd45cd168f0f3ba10e35ca73b1cebea952c"

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
