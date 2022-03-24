class Brev < Formula
  desc "CLI tool for managing workspaces provided by brev.dev"
  homepage "https://docs.brev.dev"
  url "https://github.com/brevdev/brev-cli/archive/refs/tags/v0.6.35.tar.gz"
  sha256 "29d78f3dcb716dcc5a4d6390ff800b0a0fd8af676a2bc086306288d826bd4a68"
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
