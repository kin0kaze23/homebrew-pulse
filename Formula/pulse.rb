class Pulse < Formula
  desc "Safe cleanup and machine audit for macOS developers"
  homepage "https://github.com/kin0kaze23/pulse"
  url "https://github.com/kin0kaze23/pulse/releases/download/v0.3.1/pulse-universal.zip"
  sha256 "6b87972afc216dc1a8a268db8db58bae9fe1138754b573748c5fb23b94e61fa2"
  license "MIT"
  version "0.3.1"

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
