class Pulse < Formula
  desc "Safe cleanup and machine audit for macOS developers"
  homepage "https://github.com/kin0kaze23/pulse"
  url "https://github.com/kin0kaze23/pulse/releases/download/v0.2.7/pulse-universal.zip"
  sha256 "b325dfc80a21219583b030caa59175fd999ade3e285c03b4bbe8167ec7e53ff8"
  license "MIT"
  version "0.2.7"

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
