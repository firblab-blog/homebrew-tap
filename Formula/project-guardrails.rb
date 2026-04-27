class ProjectGuardrails < Formula
  desc "Portable repo-local guardrails bootstrap utility"
  homepage "https://github.com/firblab-blog/project-guardrails"
  version "0.2.0"
  license "MIT OR Apache-2.0"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/firblab-blog/project-guardrails/releases/download/v0.2.0/project-guardrails-v0.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "f2b433954b9caf9991d52ab54edf8c3203b8702b1fac9d938c1ab879b7ce5d96"
    else
      url "https://github.com/firblab-blog/project-guardrails/releases/download/v0.2.0/project-guardrails-v0.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "e1a9bdfe87ac551f4bb3d40851f0d514fe255953ca1d70fbff3229b8cd8e24bb"
    end
  else
    url "https://github.com/firblab-blog/project-guardrails/releases/download/v0.2.0/project-guardrails-v0.2.0-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "61977ff0adc03db06277d534fdcd185584ad0cb2b7545287bb8eaeb2c0dae59e"
  end

  def install
    bin.install "project-guardrails"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/project-guardrails --version")
  end
end
