class AppleRemindersMcp < Formula
  desc "MCP server for Apple Reminders on macOS"
  homepage "https://github.com/orshemtov/apple-reminders-mcp"
  url "https://github.com/orshemtov/apple-reminders-mcp/releases/download/v0.1.2/apple-reminders-mcp-0.1.2-macos-arm64.tar.gz"
  sha256 "6aa68f0b24ba1219059c75e4efbcc007e9cae4c9c1e7bad0b6b4acf839cc5d7c"
  license "MIT"
  depends_on :macos
  def install
    bin.install "apple-reminders-mcp"
  end
  test do
    assert_match "Apple Reminders MCP", shell_output("#{bin}/apple-reminders-mcp --help")
  end
end
