# This file was generated by GoReleaser. DO NOT EDIT.
class Trivy < Formula
  desc ""
  homepage "https://github.com/aquasecurity/trivy"
  version "0.14.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/aquasecurity/trivy/releases/download/v0.14.0/trivy_0.14.0_macOS-64bit.tar.gz"
    sha256 "3bfac6712dbae42541c83d54ac5a6c76570ab5468aadaf46c35b4b11e13670c3"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/aquasecurity/trivy/releases/download/v0.14.0/trivy_0.14.0_Linux-64bit.tar.gz"
      sha256 "6585c15b5987dcd47b9d15fb6e7610790329a9f1b26a258b0d865731818cb6bf"
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/aquasecurity/trivy/releases/download/v0.14.0/trivy_0.14.0_Linux-ARM64.tar.gz"
        sha256 "ae08d9f42ff774c9e70a5adce348cc06e7019a69d2da6e3752e88ed7ee6a4eaf"
      else
      end
    end
  end

  def install
    bin.install "trivy"
  end

  test do
    system "#{bin}/program --version"
  end
end
