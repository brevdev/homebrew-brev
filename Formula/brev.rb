# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Brev < Formula
  desc "CLI tool for managing workspaces provided by brev.dev"
  homepage "https://docs.brev.dev"
  version "0.6.202"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/brevdev/brev-cli/releases/download/v0.6.202/brev-cli_0.6.202_darwin_amd64.tar.gz"
      sha256 "308c1f035ee743a23c8e642939ff5e2f91b2cae3d9c4e654bdcca66cf9059a54"

      def install
        bin.install "brev"
        generate_completions_from_executable("#{bin}/brev", "completion")
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/brevdev/brev-cli/releases/download/v0.6.202/brev-cli_0.6.202_darwin_arm64.tar.gz"
      sha256 "36e9177b80ccec1a8f5fe62515ed965c24d5451953f85b5035b15605eb99b823"

      def install
        bin.install "brev"
        generate_completions_from_executable("#{bin}/brev", "completion")
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/brevdev/brev-cli/releases/download/v0.6.202/brev-cli_0.6.202_linux_arm64.tar.gz"
      sha256 "948a25e83ef3ecc9debe3b29e9175b4e8768b2a23f9b76d63f294f746ade8c99"

      def install
        bin.install "brev"
        generate_completions_from_executable("#{bin}/brev", "completion")
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/brevdev/brev-cli/releases/download/v0.6.202/brev-cli_0.6.202_linux_amd64.tar.gz"
      sha256 "7ac521304510f0cfbc1e2d1da7ace1a669dd3e85f2cc6dfcb6abcc642b14ccd2"

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
