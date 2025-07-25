# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Brev < Formula
  desc "CLI tool for managing workspaces provided by brev.dev"
  homepage "https://docs.brev.dev"
  version "0.6.312"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/brevdev/brev-cli/releases/download/v0.6.312/brev-cli_0.6.312_darwin_arm64.tar.gz"
      sha256 "42d08d75ea2a4c8f9471a16c542785c4febcbf3fda0e35b6249e68a3a697a3c5"

      def install
        bin.install "brev"
        generate_completions_from_executable("#{bin}/brev", "completion")
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/brevdev/brev-cli/releases/download/v0.6.312/brev-cli_0.6.312_darwin_amd64.tar.gz"
      sha256 "251bda46e49bc91f3d4dc9a6145d6696cc457c08b0f025cd416ba8b80d56a571"

      def install
        bin.install "brev"
        generate_completions_from_executable("#{bin}/brev", "completion")
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/brevdev/brev-cli/releases/download/v0.6.312/brev-cli_0.6.312_linux_arm64.tar.gz"
      sha256 "91444aa5b1453b828087562463265a91cdb192ea8675d9c51b4759a97e344e46"

      def install
        bin.install "brev"
        generate_completions_from_executable("#{bin}/brev", "completion")
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/brevdev/brev-cli/releases/download/v0.6.312/brev-cli_0.6.312_linux_amd64.tar.gz"
      sha256 "2020030907196484c212ada15313fe2fcf4007ca89f50c4cb3f3bb2a7a0c15da"

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
