# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Brev < Formula
  desc "CLI tool for managing workspaces provided by brev.dev"
  homepage "https://docs.brev.dev"
  version "0.6.284"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/brevdev/brev-cli/releases/download/v0.6.284/brev-cli_0.6.284_darwin_arm64.tar.gz"
      sha256 "5b8cc5d704f72015bb3c74c23594a764d8ff235ea920eab74f3441ee10ea30b6"

      def install
        bin.install "brev"
        generate_completions_from_executable("#{bin}/brev", "completion")
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/brevdev/brev-cli/releases/download/v0.6.284/brev-cli_0.6.284_darwin_amd64.tar.gz"
      sha256 "9b3c3121cad09145e60c603d4549f8c74cf8635c436d114cc9e77dbbe10d251a"

      def install
        bin.install "brev"
        generate_completions_from_executable("#{bin}/brev", "completion")
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/brevdev/brev-cli/releases/download/v0.6.284/brev-cli_0.6.284_linux_arm64.tar.gz"
      sha256 "f712b23365baca73c84d8a0ae0b0788b4ac400ebde8144252e4cb726c9d35e4a"

      def install
        bin.install "brev"
        generate_completions_from_executable("#{bin}/brev", "completion")
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/brevdev/brev-cli/releases/download/v0.6.284/brev-cli_0.6.284_linux_amd64.tar.gz"
      sha256 "89fe513539a0975c93ba4a9a7b518e71d09500eff1a790f5d5717c2a315a1da3"

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
