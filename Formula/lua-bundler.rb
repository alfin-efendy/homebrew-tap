class LuaBundler < Formula
  desc "Lua script bundler for Roblox development"
  homepage "https://github.com/alfin-efendy/lua-bundler"
  version "1.8.1"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/alfin-efendy/lua-bundler/releases/download/v1.8.1/lua-bundler-darwin-arm64"
      sha256 "5ad3e9b88740aa4ab8e18722bafa204b0ae8cc6a89ede67d4ba0c44156dd12b3"
    else
      url "https://github.com/alfin-efendy/lua-bundler/releases/download/v1.8.1/lua-bundler-darwin-amd64"
      sha256 "ad9fed68bdc58fad77b314142d3cce7be339ce934b4fa590185619ac1332fc90"
    end
  end
  
  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/alfin-efendy/lua-bundler/releases/download/v1.8.1/lua-bundler-linux-arm64"
      sha256 "464a5aa49700585af8fce9e1d4be3dba26f968d5036b22f54099341b96d7b593"
    else
      url "https://github.com/alfin-efendy/lua-bundler/releases/download/v1.8.1/lua-bundler-linux-amd64"
      sha256 "ac715dd91f36f96e5a0a54e8a6fe1e6b2d9cf48137b7cd591b64b8ebf9ebbfd9"
    end
  end

  def install
    bin.install "lua-bundler"
  end

  test do
    system "#{bin}/lua-bundler", "--version"
  end
end
