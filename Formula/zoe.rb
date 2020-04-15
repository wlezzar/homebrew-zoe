# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Zoe < Formula
  desc "The missing companion for Kafka"
  homepage "https://adevinta.github.io/zoe"
  bottle :unneeded
  version "0.16.2"
  
  if OS.mac?
    url "https://github.com/adevinta/zoe/releases/download/v0.16.2/zoe-with-runtime-Darwin-i386-0.16.2.zip"
    sha256 "a4e851909f563df72c7378c8d40ba1ed9e1d4eb41aa480ee1a5899fe888e6820"
  elsif OS.linux?
    url "https://github.com/adevinta/zoe/releases/download/v0.16.2/zoe-with-runtime-Linux-x86_64-0.16.2.zip"
    sha256 "0fd7f87732800e3950ec415b22e3f60c69142115061bc0912ecaf758648777d7"
  end

  def install
    bin.install "bin/zoe"
    prefix.install "lib"
    prefix.install "runtime"
  end
end
