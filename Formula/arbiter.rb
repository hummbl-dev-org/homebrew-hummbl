class Arbiter < Formula
  desc "Agent-aware code quality scoring for multi-agent codebases"
  homepage "https://github.com/hummbl-dev/arbiter"
  url "https://files.pythonhosted.org/packages/6f/cc/28084198e37169c18d4004eec73a27a431b6502e3adc5545f73b21cf9590/arbiter_score-1.1.0.tar.gz"
  sha256 "6ae1d7f380e6c6ee75bc51106c35745c6ae9c5494b5c0754d313bb0fa45687ad"
  license "Apache-2.0"

  depends_on "python@3.11"

  def install
    python3 = Formula["python@3.11"].opt_bin/"python3"
    system python3, "-m", "pip", "install", *std_pip_args(build_isolation: false), "."
  end

  test do
    assert_match "arbiter", shell_output("#{bin}/arbiter --help 2>&1", 0)
  end
end
