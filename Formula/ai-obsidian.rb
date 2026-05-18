class AiObsidian < Formula
  include Language::Python::Virtualenv

  desc "Local Apple Silicon CLI installer and assistant for Obsidian + oMLX"
  homepage "https://github.com/aarogozin/ai-obsidian"
  url "https://github.com/aarogozin/ai-obsidian/releases/download/v0.1.0/ai-obsidian-0.1.0.tar.gz"
  sha256 "262e2a655cbefeee9fdf57a145795c73e895be79928f6825ea42a27270566335"
  license "MIT"

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "usage: ai-obsidian", shell_output("#{bin}/ai-obsidian --help")
  end
end
