# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Brev < Formula
  desc "CLI tool for managing workspaces provided by brev.dev"
  homepage "https://docs.brev.dev"
  version "0.6.303"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/brevdev/brev-cli/releases/download/v0.6.303/brev-cli_0.6.303_darwin_arm64.tar.gz"
      sha256 "1b4cff2a90980c10931514a7f896fbfedb53382bc21aab54c6300492eab3a0ff"

      def install
        bin.install "brev"
        generate_completions_from_executable("#{bin}/brev", "completion")
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/brevdev/brev-cli/releases/download/v0.6.303/brev-cli_0.6.303_darwin_amd64.tar.gz"
      sha256 "edb10511931afd2dbfb64b50c1dcd5ea8dc6f15f1004915f390a79bc39c3896c"

      def install
        bin.install "brev"
        generate_completions_from_executable("#{bin}/brev", "completion")
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/brevdev/brev-cli/releases/download/v0.6.303/brev-cli_0.6.303_linux_arm64.tar.gz"
      sha256 "0cda158aa1a690d2f509da2eed76c71aa6ddddec3c3f58fe5088b6a4557c156f"

      def install
        bin.install "brev"
        generate_completions_from_executable("#{bin}/brev", "completion")
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/brevdev/brev-cli/releases/download/v0.6.303/brev-cli_0.6.303_linux_amd64.tar.gz"
      sha256 "968ca4d977c744249da65985813e8c669e606be25c50de94aa13d5e59404c705"

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
