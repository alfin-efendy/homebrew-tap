class LuaBundler < Formula
  desc "Lua script bundler for Roblox development"
  homepage "https://github.com/alfin-efendy/lua-bundler"
  version "1.4.0"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/alfin-efendy/lua-bundler/releases/download/v1.4.0/lua-bundler-darwin-arm64"
      sha256 "ca81e82d5b754052b546ba7a2e2700db4d7e518b24105ce428d823ae7cb9a20f"
    else
      url "https://github.com/alfin-efendy/lua-bundler/releases/download/v1.4.0/lua-bundler-darwin-amd64"
      sha256 "adb1baa6ba41a4c4c0313ea9326ecfd5561dbc644b6eb25ae60c3eb489f16783"
    end
  end
  
  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/alfin-efendy/lua-bundler/releases/download/v1.4.0/lua-bundler-linux-arm64"
      sha256 "50734803f60db8c5340d8f9689b7aee3509383ad1f51bed1ba4142fed59bcb97"
    else
      url "https://github.com/alfin-efendy/lua-bundler/releases/download/v1.4.0/lua-bundler-linux-amd64"
      sha256 "f102618edecf5c0f6532fb133295eac087e94a8f321641e2fa124a1035fe6fb8"
    end
  end

  def install
    bin.install "lua-bundler"
  end

  test do
    system "#{bin}/lua-bundler", "--version"
  end
end
