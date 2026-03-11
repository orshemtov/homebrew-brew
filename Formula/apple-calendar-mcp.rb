class AppleCalendarMcp < Formula
  desc "MCP server for Apple Calendar on macOS"
  homepage "https://github.com/orshemtov/apple-calendar-mcp"
  url "https://github.com/orshemtov/apple-calendar-mcp/releases/download/v0.1.3/apple-calendar-mcp-0.1.3-macos-arm64.tar.gz"
  sha256 "e6c8f44a2f86cbc2bac056980f3d733aaebf6dab1461ed58f3e0004a4bb03fb4"
  version "0.1.3"
  license "MIT"

  depends_on :macos

  def install
    bin.install "apple-calendar-mcp"
  end

  test do
    assert_match "Apple Calendar MCP", shell_output("#{bin}/apple-calendar-mcp --help")
  end
end
