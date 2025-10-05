class LuaBundler < Formula
  desc "Lua script bundler for Roblox development"
  homepage "https://github.com/alfin-efendy/lua-bundler"
  version "1.5.0"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/alfin-efendy/lua-bundler/releases/download/v1.5.0/lua-bundler-darwin-arm64"
      sha256 "d8a06623511d81476fa985445f40c065bebaebffa8ba00bbb6d084766af56b4a"
    else
      url "https://github.com/alfin-efendy/lua-bundler/releases/download/v1.5.0/lua-bundler-darwin-amd64"
      sha256 "d8f0a4bd6078a8319737f59747f335e88ee2e434ff82c3e0ed3488bf2266f65a"
    end
  end
  
  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/alfin-efendy/lua-bundler/releases/download/v1.5.0/lua-bundler-linux-arm64"
      sha256 "a3f4cbfef965d7c649c697537914bd0fec4bb98006c332cbec5ff757aa484e1a"
    else
      url "https://github.com/alfin-efendy/lua-bundler/releases/download/v1.5.0/lua-bundler-linux-amd64"
      sha256 "1a3dca98e0848784a0a86ddc83effb76be513dd3a1b27542480066217f50d322"
    end
  end

  def install
    bin.install "lua-bundler"
  end

  test do
    system "#{bin}/lua-bundler", "--version"
  end
end
