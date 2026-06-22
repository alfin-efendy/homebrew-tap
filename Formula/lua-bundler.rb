class LuaBundler < Formula
  desc "Lua script bundler for Roblox development"
  homepage "https://github.com/alfin-efendy/lua-bundler"
  version "1.10.1"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/alfin-efendy/lua-bundler/releases/download/v1.10.1/lua-bundler-darwin-arm64"
      sha256 "4df6e6ae73e58791e4c37a6516f69fe50cc621d2564647c867f1310269dbe688"
    else
      url "https://github.com/alfin-efendy/lua-bundler/releases/download/v1.10.1/lua-bundler-darwin-amd64"
      sha256 "a6783e7d897499ce4f7987ea9fce04be4e8d9b0e401320fc487c500bef987044"
    end
  end
  
  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/alfin-efendy/lua-bundler/releases/download/v1.10.1/lua-bundler-linux-arm64"
      sha256 "41814df5761be2f2b0ef6d1f3b484561ea46b6a7dd9c8fd2632b709245620868"
    else
      url "https://github.com/alfin-efendy/lua-bundler/releases/download/v1.10.1/lua-bundler-linux-amd64"
      sha256 "2b0ec67d4e9876ac584eb0080f6023bb0847c24a0ac82fa20519736f62104b36"
    end
  end

  def install
    bin.install "lua-bundler"
  end

  test do
    system "#{bin}/lua-bundler", "--version"
  end
end
