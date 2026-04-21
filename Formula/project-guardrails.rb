class ProjectGuardrails < Formula
  desc "Portable repo-local guardrails bootstrap utility"
  homepage "https://github.com/firblab-blog/project-guardrails"
  version "0.1.12"
  license "MIT OR Apache-2.0"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/firblab-blog/project-guardrails/releases/download/v0.1.12/project-guardrails-v0.1.12-aarch64-apple-darwin.tar.gz"
      sha256 "c0ebb2f0772a2926e4cb48bc93fe7d31fe6cbd1657ad483ad1e7225d719b1fc9"
    else
      url "https://github.com/firblab-blog/project-guardrails/releases/download/v0.1.12/project-guardrails-v0.1.12-x86_64-apple-darwin.tar.gz"
      sha256 "d681e19c783f82a2ea000df5820d4e40854048f2b369d6e376f09052d48476c5"
    end
  else
    url "https://github.com/firblab-blog/project-guardrails/releases/download/v0.1.12/project-guardrails-v0.1.12-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "b08861752978ee8998d4f765b3c8fa8df97e0f77e6391fc91c93e09b3e1d7553"
  end

  def install
    bin.install "project-guardrails"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/project-guardrails --version")
  end
end
