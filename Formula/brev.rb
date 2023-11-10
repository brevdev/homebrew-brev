# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Brev < Formula
  desc "CLI tool for managing workspaces provided by brev.dev"
  homepage "https://docs.brev.dev"
  version "0.6.265"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/brevdev/brev-cli/releases/download/v0.6.265/brev-cli_0.6.265_darwin_arm64.tar.gz"
      sha256 "26033dd5a2e4bac4f42647f22a1e59f84c3853591ef0770526fde4b48209296b"

      def install
        bin.install "brev"
        generate_completions_from_executable("#{bin}/brev", "completion")
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/brevdev/brev-cli/releases/download/v0.6.265/brev-cli_0.6.265_darwin_amd64.tar.gz"
      sha256 "6db8dbf40d51f602b9e9689508dfa1f03affe29f142dc37cfc693b10d86b4463"

      def install
        bin.install "brev"
        generate_completions_from_executable("#{bin}/brev", "completion")
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/brevdev/brev-cli/releases/download/v0.6.265/brev-cli_0.6.265_linux_arm64.tar.gz"
      sha256 "c1712217fc75e4f14f108df93f1f891cf2e2a006e4348520ac1581862b6b2346"

      def install
        bin.install "brev"
        generate_completions_from_executable("#{bin}/brev", "completion")
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/brevdev/brev-cli/releases/download/v0.6.265/brev-cli_0.6.265_linux_amd64.tar.gz"
      sha256 "d36f5205df9a8da4266b8219f891acb9ff45e38e473f17567bb644404be32732"

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
