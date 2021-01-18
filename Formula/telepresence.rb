class Telepresence < Formula
  include Language::Python::Virtualenv

  desc "Local development against a remote Kubernetes or OpenShift cluster"
  homepage "https://www.telepresence.io"
  url "https://github.com/hudelgado/telepresence/releases/download/0.109-alpha/telepresence-0.109-alpha.tar.gz"
  sha256 "66aa235c33852c635079ccfbfd6c1001d28b05b3bccd6af11af94569c0f6039a"
  license "Apache-2.0"

  bottle do
    root_url "https://github.com/hudelgado/homebrew-blueprints/releases/download/telepresence-0.109-alpha"
    cellar :any_skip_relocation
    sha256 "8474ab3b997d8fe96ff0febcbb7b89133286d375a2106da89b94b2a140783cdf" => :x86_64_linux
  end

  depends_on "python"
  depends_on "sshfs"
  depends_on "torsocks"

  def install
    bin.install "bin/telepresence"
    libexec.install Dir["libexec/*"]
  end

  test do
    system "#{bin}/telepresence", "--help"
  end
end
