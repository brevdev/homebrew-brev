class Brev < Formula
  desc "CLI tool for managing workspaces provided by brev.dev"
  homepage "https://docs.brev.dev"
  url "https://github.com/brevdev/brev-cli/archive/refs/tags/v0.6.24.tar.gz"
  sha256 "4b3a01d50b5e3ab102efca3b832973efcca785fe7a7b3bfbbb887500c1678118"
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
