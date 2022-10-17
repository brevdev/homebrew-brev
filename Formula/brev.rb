# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Brev < Formula
  desc "CLI tool for managing workspaces provided by brev.dev"
  homepage "https://docs.brev.dev"
  version "0.6.121"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/brevdev/brev-cli/releases/download/v0.6.121/brev-cli_0.6.121_darwin_arm64.tar.gz"
      sha256 "ddc503db6109bfb082743339d56d6f54f39dbfd5979771638d4d137c8691ebbc"

      def install
        bin.install "brev"
        generate_completions_from_executable("#{bin}/brev", "completion")
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/brevdev/brev-cli/releases/download/v0.6.121/brev-cli_0.6.121_darwin_amd64.tar.gz"
      sha256 "4115539b843b12f80174252c566b2e665b4b625dfe2a7d66a0a46680531b3fad"

      def install
        bin.install "brev"
        generate_completions_from_executable("#{bin}/brev", "completion")
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/brevdev/brev-cli/releases/download/v0.6.121/brev-cli_0.6.121_linux_arm64.tar.gz"
      sha256 "21e97025a115982c9e65e81101ee58bea96e0784f80045f7aa0b9651d3e83277"

      def install
        bin.install "brev"
        generate_completions_from_executable("#{bin}/brev", "completion")
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/brevdev/brev-cli/releases/download/v0.6.121/brev-cli_0.6.121_linux_amd64.tar.gz"
      sha256 "7673d49e75cadf2ad0fa437b6aede3c178ef3437dd6c9921a655276918cea5da"

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
