class Brev < Formula
  desc "CLI tool for managing workspaces provided by brev.dev"
  homepage "https://docs.brev.dev"
  url "https://github.com/brevdev/brev-cli/archive/refs/tags/v0.6.34.tar.gz"
  sha256 "76a76904bf3ddde8e1e50a38fe86f679296421db870c549841e0ef4a2e6611d8"
  license "MIT"
  depends_on "go" => :build

  def install
    ldflags = "-X github.com/brevdev/brev-cli/pkg/cmd/version.Version=v#{version}"
    system "go", "build", *std_go_args(output: bin/"brev", ldflags: ldflags)
  end

  test do
    system "#{bin}/brev", "healthcheck"
  end
end
