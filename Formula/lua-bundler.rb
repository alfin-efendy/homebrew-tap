class LuaBundler < Formula
  desc "Lua script bundler for Roblox development"
  homepage "https://github.com/alfin-efendy/lua-bundler"
  version "1.11.0"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/alfin-efendy/lua-bundler/releases/download/v1.11.0/lua-bundler-darwin-arm64"
      sha256 "99ccac7ca783c89c123f64a7ecf1f50bf950cb6555e7c0ab75ccde75b62ef1d9"
    else
      url "https://github.com/alfin-efendy/lua-bundler/releases/download/v1.11.0/lua-bundler-darwin-amd64"
      sha256 "5dfe9190d392a423a38d1b0129b551ce581e1e883ea9005a50c7968d8abeae9b"
    end
  end
  
  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/alfin-efendy/lua-bundler/releases/download/v1.11.0/lua-bundler-linux-arm64"
      sha256 "a586ee2ce2d7b1fe0b21748bb84ed311f01d0dc6793b589dc8aca10b002dd2b9"
    else
      url "https://github.com/alfin-efendy/lua-bundler/releases/download/v1.11.0/lua-bundler-linux-amd64"
      sha256 "6c8bee50a10889416373b1e5bec4bb87853cbd520b938b6d29cafa53e80aa413"
    end
  end

  def install
    bin.install "lua-bundler"
  end

  test do
    system "#{bin}/lua-bundler", "--version"
  end
end
