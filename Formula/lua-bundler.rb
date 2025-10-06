class LuaBundler < Formula
  desc "Lua script bundler for Roblox development"
  homepage "https://github.com/alfin-efendy/lua-bundler"
  version "1.6.0"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/alfin-efendy/lua-bundler/releases/download/v1.6.0/lua-bundler-darwin-arm64"
      sha256 "5f7dc2ca43db0b2d44f0486ddb73a653371796a6fd02bbfe4e5dfc03c07c0f27"
    else
      url "https://github.com/alfin-efendy/lua-bundler/releases/download/v1.6.0/lua-bundler-darwin-amd64"
      sha256 "cee381ad519b679fcc9975c4d6e7d30e1cb36a18832321e256eba8a7258ad057"
    end
  end
  
  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/alfin-efendy/lua-bundler/releases/download/v1.6.0/lua-bundler-linux-arm64"
      sha256 "78111a8735af86d9616db53ef43863dac11b17843ebebc4905ef957c6acb03fa"
    else
      url "https://github.com/alfin-efendy/lua-bundler/releases/download/v1.6.0/lua-bundler-linux-amd64"
      sha256 "6984d68fb4d538c64049dc6186763942d4d9685bcfcdea6ef73ff163dcf9c941"
    end
  end

  def install
    bin.install "lua-bundler"
  end

  test do
    system "#{bin}/lua-bundler", "--version"
  end
end
