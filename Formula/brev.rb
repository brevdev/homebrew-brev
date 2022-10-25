# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Brev < Formula
  desc "CLI tool for managing workspaces provided by brev.dev"
  homepage "https://docs.brev.dev"
  version "0.6.134"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/brevdev/brev-cli/releases/download/v0.6.134/brev-cli_0.6.134_darwin_arm64.tar.gz"
      sha256 "f2cc5be4236e51844424eaf118623ff688c9209bee7dbcb8bbb370de1e712122"

      def install
        bin.install "brev"
        generate_completions_from_executable("#{bin}/brev", "completion")
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/brevdev/brev-cli/releases/download/v0.6.134/brev-cli_0.6.134_darwin_amd64.tar.gz"
      sha256 "5a7e4b288ef2460bed4c176d8682f38e5b906c92d9c081d8fc10ad37446e2518"

      def install
        bin.install "brev"
        generate_completions_from_executable("#{bin}/brev", "completion")
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/brevdev/brev-cli/releases/download/v0.6.134/brev-cli_0.6.134_linux_arm64.tar.gz"
      sha256 "37b845fe5509d8ba93fdddb0a1c3a9f48c0b866d91e52d483372ef48f820d645"

      def install
        bin.install "brev"
        generate_completions_from_executable("#{bin}/brev", "completion")
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/brevdev/brev-cli/releases/download/v0.6.134/brev-cli_0.6.134_linux_amd64.tar.gz"
      sha256 "af98db4ea6feb23d5a660e2aa88b3643548d82b5cc363b8e90dcaf94dced6751"

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
