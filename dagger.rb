# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Dagger < Formula
  desc "Dagger is a programmable deployment system."
  homepage "https://github.com/dagger/dagger"
  version "0.1.0-alpha.3"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://dagger-io.s3.amazonaws.com/dagger/releases/0.1.0-alpha.3/dagger_v0.1.0-alpha.3_darwin_amd64.tar.gz"
    sha256 "d29f15975eb7949e8396288a13bd563f43c760aadf9fefee043ae4b805464078"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://dagger-io.s3.amazonaws.com/dagger/releases/0.1.0-alpha.3/dagger_v0.1.0-alpha.3_darwin_arm64.tar.gz"
    sha256 "f12981d52aba58310687a82a4342379650aedbb8e996a5ac1297ef77a24e9af1"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://dagger-io.s3.amazonaws.com/dagger/releases/0.1.0-alpha.3/dagger_v0.1.0-alpha.3_linux_amd64.tar.gz"
    sha256 "31e141920ee6b15bc75b1d5e23d008cd391a6078294c4238f421d8372f51c8df"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://dagger-io.s3.amazonaws.com/dagger/releases/0.1.0-alpha.3/dagger_v0.1.0-alpha.3_linux_arm64.tar.gz"
    sha256 "aa0030e06d5121dbcdbc81a6c6d4c9f56bf36e9df6afde56767f3212e86e3f8f"
  end

  def install
    bin.install "dagger"
  end

  test do
    system "#{bin}/dagger version"
  end
end
