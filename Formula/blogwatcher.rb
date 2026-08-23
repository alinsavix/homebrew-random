class Blogwatcher < Formula
  desc "Monitor blogs and RSS/Atom feeds"
  homepage "https://github.com/JulienTant/blogwatcher-cli"
  version "0.2.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JulienTant/blogwatcher-cli/releases/download/v0.2.1/blogwatcher-cli_darwin_arm64.tar.gz"
      sha256 "89a5ad8534ee1855e871861f3241d93223a4ae615a21e0ecc1660a042996f69a"
    else
      url "https://github.com/JulienTant/blogwatcher-cli/releases/download/v0.2.1/blogwatcher-cli_darwin_amd64.tar.gz"
      sha256 "41b431cd834e747ee1d7add54eeed6076bcc0a1eff1c52c1f7dd3d9927c616ca"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/JulienTant/blogwatcher-cli/releases/download/v0.2.1/blogwatcher-cli_linux_arm64.tar.gz"
      sha256 "d2f734157bbc292e77668cfbb3ad25bc4e3a6246b24949deb5d5aa8aeb7b6780"
    else
      url "https://github.com/JulienTant/blogwatcher-cli/releases/download/v0.2.1/blogwatcher-cli_linux_amd64.tar.gz"
      sha256 "0d804ef9ffba67a1fab5a06dce8f920b67fa8bddfe84e40867c9d1202af44339"
    end
  end

  def install
    bin.install "blogwatcher-cli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/blogwatcher-cli --version")
  end
end
