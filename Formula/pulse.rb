class Pulse < Formula
  desc "Safe cleanup and machine audit for macOS developers"
  homepage "https://github.com/kin0kaze23/pulse"
  url "https://github.com/kin0kaze23/pulse/releases/download/v0.3.3/pulse-universal.zip"
  sha256 "8e0b3fd63e6fa20a91c56c39633221b40412649d0539a422fa8049ad3800850c"
  license "MIT"
  version "0.3.3"

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
