class Pulse < Formula
  desc "Safe cleanup and machine audit for macOS developers"
  homepage "https://github.com/kin0kaze23/pulse"
  url "https://github.com/kin0kaze23/pulse/releases/download/v0.2.2/pulse-universal.zip"
  sha256 "f7ad868a5b5e125bd8689a189f119d593c2fb96e762b398e9daa293ba93dbd76"
  license "MIT"
  version "0.2.2"

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
