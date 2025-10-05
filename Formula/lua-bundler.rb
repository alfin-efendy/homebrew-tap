class LuaBundler < Formula
  desc "Lua script bundler for Roblox development"
  homepage "https://github.com/alfin-efendy/lua-bundler"
  version "1.4.1"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/alfin-efendy/lua-bundler/releases/download/v1.4.1/lua-bundler-darwin-arm64"
      sha256 "6aab997699b01f45df923d41edfa97d0773f0fb949cdd82bc11c64df8d5a0a72"
    else
      url "https://github.com/alfin-efendy/lua-bundler/releases/download/v1.4.1/lua-bundler-darwin-amd64"
      sha256 "15394a8daf1c36ad78b866bf63bb7c69ccfeb0cf5cdae706641ddb3df781c40d"
    end
  end
  
  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/alfin-efendy/lua-bundler/releases/download/v1.4.1/lua-bundler-linux-arm64"
      sha256 "933919d6c1f49a7de314d8a599a391695883516a1157b41ced9a6d158c6df0ec"
    else
      url "https://github.com/alfin-efendy/lua-bundler/releases/download/v1.4.1/lua-bundler-linux-amd64"
      sha256 "fbb4a2f1fd8924bdb18204cfb974e0cb0749a0ef568e827216f2023ead648bb3"
    end
  end

  def install
    bin.install "lua-bundler"
  end

  test do
    system "#{bin}/lua-bundler", "--version"
  end
end
