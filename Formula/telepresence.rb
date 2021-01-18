# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Telepresence < Formula
  include Language::Python::Virtualenv

  desc "Local development against a remote Kubernetes or OpenShift cluster"
  homepage "https://www.telepresence.io"
  url "https://github.com/hudelgado/telepresence/releases/download/0.109-alpha/telepresence-0.109-alpha.tar.gz"
  sha256 "66aa235c33852c635079ccfbfd6c1001d28b05b3bccd6af11af94569c0f6039a"
  license "Apache-2.0"

  depends_on "python"
  depends_on "torsocks"
  depends_on "sshfs"

  def install
    bin.install "bin/telepresence"
    libexec.install Dir["libexec/*"]
  end

  test do
    system "#{bin}/telepresence", "--help"
  end
end
