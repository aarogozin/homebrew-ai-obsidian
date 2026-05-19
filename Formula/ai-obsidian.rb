class AiObsidian < Formula
  include Language::Python::Virtualenv

  desc "Local Apple Silicon CLI installer and assistant for Obsidian + oMLX"
  homepage "https://github.com/aarogozin/ai-obsidian"
  url "https://github.com/aarogozin/ai-obsidian/releases/download/v0.1.0/ai-obsidian-0.1.0.tar.gz"
  sha256 "25488931c3678d14923837b950775a987f7cbe146b510f2afbf4f5bcb8265f9c"
  license "MIT"

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "usage: ai-obsidian", shell_output("#{bin}/ai-obsidian --help")
  end
end
