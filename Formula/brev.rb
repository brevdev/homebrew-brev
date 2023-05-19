# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Brev < Formula
  desc "CLI tool for managing workspaces provided by brev.dev"
  homepage "https://docs.brev.dev"
  version "0.6.228"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/brevdev/brev-cli/releases/download/v0.6.228/brev-cli_0.6.228_darwin_arm64.tar.gz"
      sha256 "89ff3a7f18e3145b1bd5f06a3ab6a7b9f3b63c4e29d095ce14c2ad89d7fe0a9c"

      def install
        bin.install "brev"
        generate_completions_from_executable("#{bin}/brev", "completion")
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/brevdev/brev-cli/releases/download/v0.6.228/brev-cli_0.6.228_darwin_amd64.tar.gz"
      sha256 "866befdb0c331c38ab8a45ed73b08bb5d28f659e295d3b98fa90861f186041f2"

      def install
        bin.install "brev"
        generate_completions_from_executable("#{bin}/brev", "completion")
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/brevdev/brev-cli/releases/download/v0.6.228/brev-cli_0.6.228_linux_arm64.tar.gz"
      sha256 "0c1f2ced6d7c6eaa0cb7260c76fcae2b8c9796cc81b790761c06193a427d9385"

      def install
        bin.install "brev"
        generate_completions_from_executable("#{bin}/brev", "completion")
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/brevdev/brev-cli/releases/download/v0.6.228/brev-cli_0.6.228_linux_amd64.tar.gz"
      sha256 "527c713dfe003c679353f83a8218392daf4b26c8b6c08a75b64c2f5d32265397"

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
