# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Brev < Formula
  desc "CLI tool for managing workspaces provided by brev.dev"
  homepage "https://docs.brev.dev"
  version "0.6.168"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/brevdev/brev-cli/releases/download/v0.6.168/brev-cli_0.6.168_darwin_arm64.tar.gz"
      sha256 "11842ccd4e26e289193a070380d28ebee1fa9afc26b44b04cdc895a511355e37"

      def install
        bin.install "brev"
        generate_completions_from_executable("#{bin}/brev", "completion")
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/brevdev/brev-cli/releases/download/v0.6.168/brev-cli_0.6.168_darwin_amd64.tar.gz"
      sha256 "f07ff8b86034f53c11a345843d1beeedce27c9bbd30c51c07c36aceaabe17d84"

      def install
        bin.install "brev"
        generate_completions_from_executable("#{bin}/brev", "completion")
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/brevdev/brev-cli/releases/download/v0.6.168/brev-cli_0.6.168_linux_arm64.tar.gz"
      sha256 "927011f2eb98dde6baab531211904982cfb2ad4737d2277d77ad712bfc74bed0"

      def install
        bin.install "brev"
        generate_completions_from_executable("#{bin}/brev", "completion")
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/brevdev/brev-cli/releases/download/v0.6.168/brev-cli_0.6.168_linux_amd64.tar.gz"
      sha256 "7f3a48b966b47a4f089c3bd8a76e10b8bb7cd223d5f804d4090eb74c43bd2020"

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
