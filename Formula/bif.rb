class Bif < Formula
  desc "Batch Ingestion Framework for structured technical knowledge acquisition"
  homepage "https://github.com/hummbl-dev/bif"
  url "https://files.pythonhosted.org/packages/d3/70/5c2b245de93918782d480f5de6415a6cf103c8f974fa5d1c3afd439bae43/hummbl_bif-1.0.1.tar.gz"
  sha256 "de25a7fec87065d5d8e5725baa4b4e51221d9a32c4020233d5ad2ba2096d5e8e"
  license "Apache-2.0"

  depends_on "python@3.11"

  def install
    python3 = Formula["python@3.11"].opt_bin/"python3"
    system python3, "-m", "pip", "install", *std_pip_args(build_isolation: false), "."
  end

  test do
    assert_match "bif", shell_output("#{bin}/bif --help 2>&1", 0)
  end
end
