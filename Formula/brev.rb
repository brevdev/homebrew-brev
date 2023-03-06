# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Brev < Formula
  desc "CLI tool for managing workspaces provided by brev.dev"
  homepage "https://docs.brev.dev"
  version "0.6.210"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/brevdev/brev-cli/releases/download/v0.6.210/brev-cli_0.6.210_darwin_arm64.tar.gz"
      sha256 "a004658c968b850747a140002db634c13182135c4d892bb8a2dee53ee763b15f"

      def install
        bin.install "brev"
        generate_completions_from_executable("#{bin}/brev", "completion")
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/brevdev/brev-cli/releases/download/v0.6.210/brev-cli_0.6.210_darwin_amd64.tar.gz"
      sha256 "49ec47a5f8c18c4ee955689af71668fc3ad5e6ddaa707b1c48f22b0cbd5290fd"

      def install
        bin.install "brev"
        generate_completions_from_executable("#{bin}/brev", "completion")
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/brevdev/brev-cli/releases/download/v0.6.210/brev-cli_0.6.210_linux_arm64.tar.gz"
      sha256 "7bfedbcb5933c448902bd7e75f335aaae08bad2510fdef4cbfd8c45baa4ead41"

      def install
        bin.install "brev"
        generate_completions_from_executable("#{bin}/brev", "completion")
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/brevdev/brev-cli/releases/download/v0.6.210/brev-cli_0.6.210_linux_amd64.tar.gz"
      sha256 "ded1f13ff0055e39030aeccbe63ad277a52515e51618f7a05aaea850ad7b7f0c"

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
