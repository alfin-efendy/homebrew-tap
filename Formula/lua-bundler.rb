class LuaBundler < Formula
  desc "Lua script bundler for Roblox development"
  homepage "https://github.com/alfin-efendy/lua-bundler"
  version "1.3.0"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/alfin-efendy/lua-bundler/releases/download/v1.3.0/lua-bundler-darwin-arm64"
      sha256 "012a95d3159706bfb6d7d747ba00fdbc1729ea2e82c79a0404096f0a0913b8aa"
    else
      url "https://github.com/alfin-efendy/lua-bundler/releases/download/v1.3.0/lua-bundler-darwin-amd64"
      sha256 "80f23515deb87fc53c266a1643b50386417624bdc5dcc58e142077bc5f10aa52"
    end
  end
  
  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/alfin-efendy/lua-bundler/releases/download/v1.3.0/lua-bundler-linux-arm64"
      sha256 "52581f59aec0d1f4df7c663560c1368b8730251983103bc8e8f0a36fbc0d7fcf"
    else
      url "https://github.com/alfin-efendy/lua-bundler/releases/download/v1.3.0/lua-bundler-linux-amd64"
      sha256 "8baf21a7960f8bacaaf33e40a9e6f960a90c51266dc485d384f2d94ab90cedb0"
    end
  end

  def install
    bin.install "lua-bundler"
  end

  test do
    system "#{bin}/lua-bundler", "--version"
  end
end
