# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Zoe < Formula
  desc "The missing companion for Kafka"
  homepage "https://adevinta.github.io/zoe"
  bottle :unneeded
  version "0.15.1"
  
  if OS.mac?
    url "https://github.com/adevinta/zoe/releases/download/v0.15.1/zoe-with-runtime-Darwin-i386-0.15.1.zip"
    sha256 "eb2ab9ec895f51656f3cdf931472fa5862b225d4ffb2b3f928752b1d9ed580a9"
  elsif OS.linux?
    url "https://github.com/adevinta/zoe/releases/download/v0.15.1/zoe-with-runtime-Linux-x86_64-0.15.1.zip"
    sha256 "ad51f7cdcd17f72a8b0e6653af676b1a4eff35fc488e80e9e16df6c3a45e7c5c"
  end

  def install
    bin.install "bin/zoe"
    prefix.install "lib"
    prefix.install "runtime"
  end
end
