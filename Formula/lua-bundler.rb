class LuaBundler < Formula
  desc "Lua script bundler for Roblox development"
  homepage "https://github.com/alfin-efendy/lua-bundler"
  version "1.8.3"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/alfin-efendy/lua-bundler/releases/download/v1.8.3/lua-bundler-darwin-arm64"
      sha256 "670e62d2a11063dc6ecaa983a76939aed17647661204c1d99fca584612c761ae"
    else
      url "https://github.com/alfin-efendy/lua-bundler/releases/download/v1.8.3/lua-bundler-darwin-amd64"
      sha256 "21f1f6262fcc94a1cf3f7c4622968b18a1c3bbf1705cb03254be5acd05e2d8bf"
    end
  end
  
  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/alfin-efendy/lua-bundler/releases/download/v1.8.3/lua-bundler-linux-arm64"
      sha256 "a3e71428a4760e5ab70a48cf784390752bb64630f704111c95ce0677e9d44186"
    else
      url "https://github.com/alfin-efendy/lua-bundler/releases/download/v1.8.3/lua-bundler-linux-amd64"
      sha256 "99d1049e88eaed1f5424a8d99137b78a8298a3425a00c0b8299b078c47fa23de"
    end
  end

  def install
    bin.install "lua-bundler"
  end

  test do
    system "#{bin}/lua-bundler", "--version"
  end
end
