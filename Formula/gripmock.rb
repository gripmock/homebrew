# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Gripmock < Formula
  desc "A mock server for gRPC services using .proto files or compiled .pb descriptors"
  homepage "https://bavix.github.io/gripmock/"
  version "3.2.18"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/bavix/gripmock/releases/download/v3.2.18/gripmock_3.2.18_darwin_amd64.tar.gz"
      sha256 "1ebc141e108511a484a668feb69b9360273de3de34fc77245bc8020d5774775d"

      def install
        bin.install "gripmock"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/bavix/gripmock/releases/download/v3.2.18/gripmock_3.2.18_darwin_arm64.tar.gz"
      sha256 "e5bb3613dd0ddd882b3cddc7b9a7b72fb31d176f942e0527e0f2b1f8a6c771f1"

      def install
        bin.install "gripmock"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/bavix/gripmock/releases/download/v3.2.18/gripmock_3.2.18_linux_amd64.tar.gz"
      sha256 "b31cdfa83890b8be74a494d820635a6b5a44f98349ec69899c3216f04af21dc2"
      def install
        bin.install "gripmock"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/bavix/gripmock/releases/download/v3.2.18/gripmock_3.2.18_linux_arm64.tar.gz"
      sha256 "41363457dbd73e51f7cf17242f3a669117f340ebb2423186de20935619bb52fb"
      def install
        bin.install "gripmock"
      end
    end
  end

  test do
    assert_match "v#{version}", shell_output("#{bin}/gripmock --version")
  end
end
