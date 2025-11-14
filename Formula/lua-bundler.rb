class LuaBundler < Formula
  desc "Lua script bundler for Roblox development"
  homepage "https://github.com/alfin-efendy/lua-bundler"
  version "1.8.2"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/alfin-efendy/lua-bundler/releases/download/v1.8.2/lua-bundler-darwin-arm64"
      sha256 "a7c3fb0bc8697ac8f45bb2312522860b06237f096c9498328ba5a5e1967febd1"
    else
      url "https://github.com/alfin-efendy/lua-bundler/releases/download/v1.8.2/lua-bundler-darwin-amd64"
      sha256 "ce83b19cfd8b89fae0df96d0cfb865958a88d97c62567bc7ee603c5dc57a7f81"
    end
  end
  
  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/alfin-efendy/lua-bundler/releases/download/v1.8.2/lua-bundler-linux-arm64"
      sha256 "b26f56121fb02ab0070b857d6f29cdfb1a2320ed07f5072add1c9b084ab7bfa8"
    else
      url "https://github.com/alfin-efendy/lua-bundler/releases/download/v1.8.2/lua-bundler-linux-amd64"
      sha256 "69463b20d85852df1f7dabdcf26a6bd82adb0846519f469726f96ee20569da32"
    end
  end

  def install
    bin.install "lua-bundler"
  end

  test do
    system "#{bin}/lua-bundler", "--version"
  end
end
