class LuaBundler < Formula
  desc "Lua script bundler for Roblox development"
  homepage "https://github.com/alfin-efendy/lua-bundler"
  version "1.12.0"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/alfin-efendy/lua-bundler/releases/download/v1.12.0/lua-bundler-darwin-arm64"
      sha256 "f26b1325f58cafe59d6b53b96d420bbd15353fd589e3d0a86cec0f6440231d00"
    else
      url "https://github.com/alfin-efendy/lua-bundler/releases/download/v1.12.0/lua-bundler-darwin-amd64"
      sha256 "ff567e578a942747a033bf8080fcd87ed50b290f3661213b4bb19d6771bd5c38"
    end
  end
  
  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/alfin-efendy/lua-bundler/releases/download/v1.12.0/lua-bundler-linux-arm64"
      sha256 "f351b985ad708b0ccb01895589db8fd48f3748825fba7c0c22fc0133b89bf1ee"
    else
      url "https://github.com/alfin-efendy/lua-bundler/releases/download/v1.12.0/lua-bundler-linux-amd64"
      sha256 "c6e57ffbabbb91e212d7836ae5e2af7ebd9ef5dbf0ed57c2ff8f170b48c49312"
    end
  end

  def install
    bin.install "lua-bundler"
  end

  test do
    system "#{bin}/lua-bundler", "--version"
  end
end
