class Brev < Formula
  desc "CLI tool for managing workspaces provided by brev.dev"
  homepage "https://docs.brev.dev"
  url "https://github.com/brevdev/brev-cli/archive/refs/tags/v0.6.14.tar.gz"
  sha256 "259dd4e9855ac272a747d30bfbc97389fa8ff6e79b3a3df7846d875bbb88547f"
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
