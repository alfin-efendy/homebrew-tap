class LuaBundler < Formula
  desc "Lua script bundler for Roblox development"
  homepage "https://github.com/alfin-efendy/lua-bundler"
  version "1.10.0"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/alfin-efendy/lua-bundler/releases/download/v1.10.0/lua-bundler-darwin-arm64"
      sha256 "9aa026a765c3c5c4c5009e8a4364b4bbb1a52922c52d0270959e76cfe7068947"
    else
      url "https://github.com/alfin-efendy/lua-bundler/releases/download/v1.10.0/lua-bundler-darwin-amd64"
      sha256 "ae30ca4d9bf9232550f2f9473572e78a83508498ec48eee911981c733371e605"
    end
  end
  
  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/alfin-efendy/lua-bundler/releases/download/v1.10.0/lua-bundler-linux-arm64"
      sha256 "0f2e39ac5b2f4e233a959bffa654cc8165b5c4ce8fdda3f48c4606b49a522102"
    else
      url "https://github.com/alfin-efendy/lua-bundler/releases/download/v1.10.0/lua-bundler-linux-amd64"
      sha256 "79b0467ea71133a36fc8f58bb9ddbf03f7ccf5d7161415e497958939e3d69744"
    end
  end

  def install
    bin.install "lua-bundler"
  end

  test do
    system "#{bin}/lua-bundler", "--version"
  end
end
