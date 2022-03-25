# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class BrevCli < Formula
  desc "CLI tool for managing workspaces provided by brev.dev"
  homepage "https://docs.brev.dev"
  version "0.6.36-betaa"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/brevdev/brev-cli/releases/download/v0.6.36-betaa/brev-cli_0.6.36-betaa_darwin_amd64.tar.gz"
      sha256 "be438f5f2fa00002f8c6298e1a905c86d85896062b2b6cbfd925e2aaa1ad77a6"
    end
    if Hardware::CPU.arm?
      url "https://github.com/brevdev/brev-cli/releases/download/v0.6.36-betaa/brev-cli_0.6.36-betaa_darwin_arm64.tar.gz"
      sha256 "f3f33767993c7bcad984775597c544c56108cf5128a09e9861e950925def1c4c"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/brevdev/brev-cli/releases/download/v0.6.36-betaa/brev-cli_0.6.36-betaa_linux_amd64.tar.gz"
      sha256 "edaa74e2c504a65485ed6577789a85240019cb9c91bace891dd1e70c71a4a43e"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/brevdev/brev-cli/releases/download/v0.6.36-betaa/brev-cli_0.6.36-betaa_linux_arm64.tar.gz"
      sha256 "d38a5d49995a4c7fb6b1e118675fcdf466d82ce622028bd43d7e037549ce9ccb"
    end
  end

  def install
    bin.install "brev"
  end

  test do
    system "#{bin}/brev" "--version"
  end
end