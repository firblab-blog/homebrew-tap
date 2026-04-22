class ProjectGuardrails < Formula
  desc "Portable repo-local guardrails bootstrap utility"
  homepage "https://github.com/firblab-blog/project-guardrails"
  version "0.1.16"
  license "MIT OR Apache-2.0"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/firblab-blog/project-guardrails/releases/download/v0.1.16/project-guardrails-v0.1.16-aarch64-apple-darwin.tar.gz"
      sha256 "872f23d216f6d91b089347fc1c5d8f055a292aa2c3492f1015d4000fc93a9f01"
    else
      url "https://github.com/firblab-blog/project-guardrails/releases/download/v0.1.16/project-guardrails-v0.1.16-x86_64-apple-darwin.tar.gz"
      sha256 "ea5188b82585d34081928eb7243806f6c4191d3d75174949a43b8cf9166c456a"
    end
  else
    url "https://github.com/firblab-blog/project-guardrails/releases/download/v0.1.16/project-guardrails-v0.1.16-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "1715127bd459acb6e02743f091e67d84665d005ffb3d5772407877425af35387"
  end

  def install
    bin.install "project-guardrails"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/project-guardrails --version")
  end
end
