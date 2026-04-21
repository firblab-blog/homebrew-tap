class ProjectGuardrails < Formula
  desc "Portable repo-local guardrails bootstrap utility"
  homepage "https://github.com/firblab-blog/project-guardrails"
  version "0.1.10"
  license "MIT OR Apache-2.0"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/firblab-blog/project-guardrails/releases/download/v0.1.10/project-guardrails-v0.1.10-aarch64-apple-darwin.tar.gz"
      sha256 "ea603e0f423b7ca22bcf551046d86dc48ea05133b788356a7aa23984fcbfe4bf"
    else
      url "https://github.com/firblab-blog/project-guardrails/releases/download/v0.1.10/project-guardrails-v0.1.10-x86_64-apple-darwin.tar.gz"
      sha256 "91d255dddf6fc1080107693d54c756a9c2ac54090fc731bf924d68ac2ca408b2"
    end
  else
    url "https://github.com/firblab-blog/project-guardrails/releases/download/v0.1.10/project-guardrails-v0.1.10-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "1718e85cc1bb868a3969433e4912ad1add254ec4a3b1c6284fed5ac566484b0e"
  end

  def install
    bin.install "project-guardrails"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/project-guardrails --version")
  end
end
