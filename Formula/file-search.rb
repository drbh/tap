class FileSearch < Formula
  desc "Fast file search using direct macOS directory syscalls"
  homepage "https://github.com/drbh/file-search"
  url "https://github.com/drbh/file-search/releases/download/v0.1.0/f"
  sha256 "3bc7eeb4de7b504fa22a0a204d9e1da113c5241eba0266364b27e37e05cb0d45"

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "f"
  end

  test do
    (testpath/"alpha.txt").write("hello")
    assert_match "alpha.txt", shell_output("#{bin}/f #{testpath} alpha -l")
  end
end
