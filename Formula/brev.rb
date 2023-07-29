# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Brev < Formula
  desc "CLI tool for managing workspaces provided by brev.dev"
  homepage "https://docs.brev.dev"
  version "0.6.251"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/brevdev/brev-cli/releases/download/v0.6.251/brev-cli_0.6.251_darwin_arm64.tar.gz"
      sha256 "e850b373ff690127ed3bbcfc7a0eb3a0ed47323a5851176c7a8cc5272ce8633f"

      def install
        bin.install "brev"
        generate_completions_from_executable("#{bin}/brev", "completion")
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/brevdev/brev-cli/releases/download/v0.6.251/brev-cli_0.6.251_darwin_amd64.tar.gz"
      sha256 "fec8837a89e10f52a5694e1f4ce3fcad49ebf8e5a301d03b1aaf2a9f9d7e3a20"

      def install
        bin.install "brev"
        generate_completions_from_executable("#{bin}/brev", "completion")
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/brevdev/brev-cli/releases/download/v0.6.251/brev-cli_0.6.251_linux_arm64.tar.gz"
      sha256 "7401cc284e700c976f46d07c1f1b8ea15f36a675a36fbb99d62bc4ef26024587"

      def install
        bin.install "brev"
        generate_completions_from_executable("#{bin}/brev", "completion")
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/brevdev/brev-cli/releases/download/v0.6.251/brev-cli_0.6.251_linux_amd64.tar.gz"
      sha256 "0008705f1ff050e6d00e92178245ec35df182888a899bf104e50b157a73780b0"

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
