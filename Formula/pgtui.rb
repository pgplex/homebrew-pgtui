# typed: false
# frozen_string_literal: true

class Pgtui < Formula
  desc "A simple terminal UI for PostgreSQL"
  homepage "https://github.com/pgplex/pgtui"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/pgplex/pgtui/releases/download/v0.2.0/lazypg_0.2.0_darwin_amd64.tar.gz"
      sha256 "c1e04b43bd70ab088194953c11038695b4bdb5857b7a3f4b2f76e5677f01a0d0"

      def install
        bin.install "lazypg" => "pgtui"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/pgplex/pgtui/releases/download/v0.2.0/lazypg_0.2.0_darwin_arm64.tar.gz"
      sha256 "4a5c8e995c933c50b3bb4bed4af060e7175623ce773aa4aa232ce16a0711d7c7"

      def install
        bin.install "lazypg" => "pgtui"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/pgplex/pgtui/releases/download/v0.2.0/lazypg_0.2.0_linux_amd64.tar.gz"
      sha256 "27ecd9fcc9a1a354776e7c849ed2b97235c9d63a510a50326dd4b337e947a5de"
      def install
        bin.install "lazypg" => "pgtui"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/pgplex/pgtui/releases/download/v0.2.0/lazypg_0.2.0_linux_arm64.tar.gz"
      sha256 "461671351b6c9957f1b598dad2c7c43b9e38832ada7f3325f76f249d0fcaacae"
      def install
        bin.install "lazypg" => "pgtui"
      end
    end
  end

  test do
    system "#{bin}/pgtui", "--version"
  end
end
