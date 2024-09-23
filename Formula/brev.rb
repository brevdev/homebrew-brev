# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Brev < Formula
  desc "CLI tool for managing workspaces provided by brev.dev"
  homepage "https://docs.brev.dev"
  version "0.6.292"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/brevdev/brev-cli/releases/download/v0.6.292/brev-cli_0.6.292_darwin_arm64.tar.gz"
      sha256 "c21efa43e71950479e074e2dbcd80e7c27e846409429913c3390c1b0a2f3e943"

      def install
        bin.install "brev"
        generate_completions_from_executable("#{bin}/brev", "completion")
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/brevdev/brev-cli/releases/download/v0.6.292/brev-cli_0.6.292_darwin_amd64.tar.gz"
      sha256 "95f8465182841256749a03426f8c6431893fc57bc2c70c8df1cdd0ac89840b91"

      def install
        bin.install "brev"
        generate_completions_from_executable("#{bin}/brev", "completion")
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/brevdev/brev-cli/releases/download/v0.6.292/brev-cli_0.6.292_linux_arm64.tar.gz"
      sha256 "6f94120fd726c30a245f334d8f2df67929f9616b367c67eef50b2150592e164a"

      def install
        bin.install "brev"
        generate_completions_from_executable("#{bin}/brev", "completion")
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/brevdev/brev-cli/releases/download/v0.6.292/brev-cli_0.6.292_linux_amd64.tar.gz"
      sha256 "103d8002821388ffab0e0aeae324df6165c29c8d195e3504a9ff16bae4521ea7"

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
