class LuaBundler < Formula
  desc "Lua script bundler for Roblox development"
  homepage "https://github.com/alfin-efendy/lua-bundler"
  version "1.9.0"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/alfin-efendy/lua-bundler/releases/download/v1.9.0/lua-bundler-darwin-arm64"
      sha256 "03841399098bd7cea5b439777f27e3ce81308269c8877126bda9a6cff962174a"
    else
      url "https://github.com/alfin-efendy/lua-bundler/releases/download/v1.9.0/lua-bundler-darwin-amd64"
      sha256 "a54be689714cf4e8e7a65ea55be22853e24d3fc3afa16351cc25e77b39a17922"
    end
  end
  
  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/alfin-efendy/lua-bundler/releases/download/v1.9.0/lua-bundler-linux-arm64"
      sha256 "ee875e6b47301a2402fa4e472e200172c1e26ec59155fdf09daf90bc712ccb7a"
    else
      url "https://github.com/alfin-efendy/lua-bundler/releases/download/v1.9.0/lua-bundler-linux-amd64"
      sha256 "80ef2d8c5a3ec647d59f4e385f2d2e8950c5304a419090c97fe89e9e3a24d865"
    end
  end

  def install
    bin.install "lua-bundler"
  end

  test do
    system "#{bin}/lua-bundler", "--version"
  end
end
