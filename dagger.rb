# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Dagger < Formula
  desc "Dagger is a programmable deployment system."
  homepage "https://github.com/dagger/dagger"
  version "0.1.0-alpha.22"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://dl.dagger.io/dagger/releases/0.1.0-alpha.22/dagger_v0.1.0-alpha.22_darwin_amd64.tar.gz"
      sha256 "f517236b791fe82f6fc8124881799ef4d1117447bf7b72fb43f7ac9a508f34a0"
    end
    if Hardware::CPU.arm?
      url "https://dl.dagger.io/dagger/releases/0.1.0-alpha.22/dagger_v0.1.0-alpha.22_darwin_arm64.tar.gz"
      sha256 "df9eda21d393245cea47f14f89c9625e43e8ff188dab2d506eb1a5524a7a5a76"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://dl.dagger.io/dagger/releases/0.1.0-alpha.22/dagger_v0.1.0-alpha.22_linux_amd64.tar.gz"
      sha256 "1fd71838f5adb01045aa69bf8f5e10723bf41754b8466f9e715f98704612bb15"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://dl.dagger.io/dagger/releases/0.1.0-alpha.22/dagger_v0.1.0-alpha.22_linux_arm64.tar.gz"
      sha256 "67e5dd57e76a36d0e980fd697b1d27d769573bf0f1176ba904dfc245a4f0cf29"
    end
  end

  def install
    bin.install "dagger"
  end

  test do
    system "#{bin}/dagger version"
  end
end
