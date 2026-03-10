class AppleRemindersMcp < Formula
  desc "MCP server for Apple Reminders on macOS"
  homepage "https://github.com/orshemtov/apple-reminders-mcp"
  url "https://github.com/orshemtov/apple-reminders-mcp/releases/download/v0.1.4/apple-reminders-mcp-0.1.4-macos-arm64.tar.gz"
  sha256 "497a420d7a82f2d9839401fc1d40433e840a0fe4c3cacfb5c7966b2ed6c8f2f5"
  license "MIT"

  depends_on :macos

  def install
    bin.install "apple-reminders-mcp"
  end

  test do
    assert_match "Apple Reminders MCP", shell_output("#{bin}/apple-reminders-mcp --help")
  end
end
