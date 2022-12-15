# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Brev < Formula
  desc "CLI tool for managing workspaces provided by brev.dev"
  homepage "https://docs.brev.dev"
  version "0.6.193"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/brevdev/brev-cli/releases/download/v0.6.193/brev-cli_0.6.193_darwin_amd64.tar.gz"
      sha256 "f5fa3969edf530334c6be387702c473e7b9bc12a69fdc26f48e911d898073b2c"

      def install
        bin.install "brev"
        generate_completions_from_executable("#{bin}/brev", "completion")
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/brevdev/brev-cli/releases/download/v0.6.193/brev-cli_0.6.193_darwin_arm64.tar.gz"
      sha256 "49787807af1654dc8b1252f450ce7f9cba47179b5a2cf04d3b5d76ed2ad6dde3"

      def install
        bin.install "brev"
        generate_completions_from_executable("#{bin}/brev", "completion")
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/brevdev/brev-cli/releases/download/v0.6.193/brev-cli_0.6.193_linux_arm64.tar.gz"
      sha256 "feea97d27a9609c3197fbc39004653f7e5fcebb10cd002290919924ab6a478d1"

      def install
        bin.install "brev"
        generate_completions_from_executable("#{bin}/brev", "completion")
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/brevdev/brev-cli/releases/download/v0.6.193/brev-cli_0.6.193_linux_amd64.tar.gz"
      sha256 "337820ae83b7d1d03f29feec188af11b609c8d252f900feee7a61c154abac9c4"

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
