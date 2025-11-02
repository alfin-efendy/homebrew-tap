class LuaBundler < Formula
  desc "Lua script bundler for Roblox development"
  homepage "https://github.com/alfin-efendy/lua-bundler"
  version "1.7.0"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/alfin-efendy/lua-bundler/releases/download/v1.7.0/lua-bundler-darwin-arm64"
      sha256 "148f6bd26a60fc05cfd2a8cf24558d6f33779ba611775d0460904f343991b876"
    else
      url "https://github.com/alfin-efendy/lua-bundler/releases/download/v1.7.0/lua-bundler-darwin-amd64"
      sha256 "68e7a55d5360949e891b0302161fe228ef7525f6d4533ba4f2083af55aef6b14"
    end
  end
  
  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/alfin-efendy/lua-bundler/releases/download/v1.7.0/lua-bundler-linux-arm64"
      sha256 "3b4c050ea28e1517b3f4375c61a19dacfc46e625de43091880ea93f5c51258ae"
    else
      url "https://github.com/alfin-efendy/lua-bundler/releases/download/v1.7.0/lua-bundler-linux-amd64"
      sha256 "3f9df0e6847a2efbc538bae94474ad39cec40804a31222f108aae76fd77a4df5"
    end
  end

  def install
    bin.install "lua-bundler"
  end

  test do
    system "#{bin}/lua-bundler", "--version"
  end
end
