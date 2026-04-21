class ProjectGuardrails < Formula
  desc "Portable repo-local guardrails bootstrap utility"
  homepage "https://github.com/firblab-blog/project-guardrails"
  version "0.1.13"
  license "MIT OR Apache-2.0"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/firblab-blog/project-guardrails/releases/download/v0.1.13/project-guardrails-v0.1.13-aarch64-apple-darwin.tar.gz"
      sha256 "dae78841f687a463d206967ce459318d98bd183ce43ae7a2f7bf4ccd8116f031"
    else
      url "https://github.com/firblab-blog/project-guardrails/releases/download/v0.1.13/project-guardrails-v0.1.13-x86_64-apple-darwin.tar.gz"
      sha256 "a08d851a4bfa4fa709d22402b9f61c1cf3543139cd5bc6d54d7aa80e5ad1c553"
    end
  else
    url "https://github.com/firblab-blog/project-guardrails/releases/download/v0.1.13/project-guardrails-v0.1.13-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "faa8a3de67c943b50b4c7046a6c3b1c6cc81c0a868abfb0e29df99cfaf4dbdb8"
  end

  def install
    bin.install "project-guardrails"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/project-guardrails --version")
  end
end
