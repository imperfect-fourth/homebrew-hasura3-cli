class Hasura3Cli < Formula
  desc "Hasura V3 CLI"
  homepage "https://hasura.io"
  version "2023.11.30"
  url "https://storage.googleapis.com/graphql-engine-cdn.hasura.io/ddn/cli/#{version}/hasura3-cli-2032.11.30.tar.gz"
  sha256 "48f909434a1eaa30c0899f3202a6762d8ad7c28ed91c7f6296921e1574d30044"

  on_macos do
    if Hardware::CPU.intel?
      def install
        bin.install "cli-hasura3-macos-amd64" => "hasura3"
      end
    end
    if Hardware::CPU.arm?
      def install
        bin.install "cli-hasura3-macos-arm64" => "hasura3"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      def install
        bin.install "cli-hasura3-linux-amd64" => "hasura3"
      end
    end
  end

  test do
    system "#{bin}/hasura3 version"
  end
end
