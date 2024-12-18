# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Brev < Formula
  desc "CLI tool for managing workspaces provided by brev.dev"
  homepage "https://docs.brev.dev"
  version "0.6.302"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/brevdev/brev-cli/releases/download/v0.6.302/brev-cli_0.6.302_darwin_arm64.tar.gz"
      sha256 "f3fbecd3d7a03c0583770971b164d511316b65d9dd6e3d9428bd61668b91100f"

      def install
        bin.install "brev"
        generate_completions_from_executable("#{bin}/brev", "completion")
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/brevdev/brev-cli/releases/download/v0.6.302/brev-cli_0.6.302_darwin_amd64.tar.gz"
      sha256 "fa8126234e17f463e6f39f3c196f12fdb668c8f9fbc409a5db5d6f5394cfc518"

      def install
        bin.install "brev"
        generate_completions_from_executable("#{bin}/brev", "completion")
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/brevdev/brev-cli/releases/download/v0.6.302/brev-cli_0.6.302_linux_arm64.tar.gz"
      sha256 "02b30a5662a41b48b98a4065acf5c4ea49089df9b024fc987396e3b831824eab"

      def install
        bin.install "brev"
        generate_completions_from_executable("#{bin}/brev", "completion")
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/brevdev/brev-cli/releases/download/v0.6.302/brev-cli_0.6.302_linux_amd64.tar.gz"
      sha256 "220fb9267f3dca6a8127b92f1c560b99444e54e20c3938459ef1cd267694adf4"

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
