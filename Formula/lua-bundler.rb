class LuaBundler < Formula
  desc "Lua script bundler for Roblox development"
  homepage "https://github.com/alfin-efendy/lua-bundler"
  version "1.8.0"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/alfin-efendy/lua-bundler/releases/download/v1.8.0/lua-bundler-darwin-arm64"
      sha256 "b3b927c6843ac5ec798c30dcbc4ba7db88e08f7e92a7b27627d1e48142cb74d5"
    else
      url "https://github.com/alfin-efendy/lua-bundler/releases/download/v1.8.0/lua-bundler-darwin-amd64"
      sha256 "3846eb1e8c6891853c72b2be32391295583bd105153f2fc5ed2f84b67c2efdf3"
    end
  end
  
  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/alfin-efendy/lua-bundler/releases/download/v1.8.0/lua-bundler-linux-arm64"
      sha256 "cdf746e16883dc11773f2521aca5b15e950a315b4f126389121755edd74ae4d9"
    else
      url "https://github.com/alfin-efendy/lua-bundler/releases/download/v1.8.0/lua-bundler-linux-amd64"
      sha256 "df4e7e56022a814aa3d85f2a451f1f4065b7edf727d5bc83bd535c215d747207"
    end
  end

  def install
    bin.install "lua-bundler"
  end

  test do
    system "#{bin}/lua-bundler", "--version"
  end
end
