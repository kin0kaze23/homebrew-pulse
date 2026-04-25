class Pulse < Formula
  desc "Safe cleanup and machine audit for macOS developers"
  homepage "https://github.com/kin0kaze23/pulse"
  url "https://github.com/kin0kaze23/pulse/releases/download/v0.2.9/pulse-universal.zip"
  sha256 "eb6c025fc19501aeac99ab6f27a09e8a98339c28d6e3d2a593884f2ce9537aa5"
  license "MIT"
  version "0.2.9"

  depends_on macos: :sonoma

  def install
    bin.install "pulse"
  end

  test do
    assert_match "Pulse CLI", shell_output("#{bin}/pulse --version")
    assert_match "Usage:", shell_output("#{bin}/pulse --help")
    assert_equal 0, shell_output("#{bin}/pulse doctor --json").exitstatus
  end
end
