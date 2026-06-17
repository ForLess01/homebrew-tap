cask "nuvi" do
  version "1.0.0"
  sha256 "a2b236fed6761d04732b0620a6c41833b60e7a5e7fcbc529efbf1e1e22d6274f"

  url "https://github.com/ForLess01/Nuvi_STT/releases/download/v#{version}/Nuvi.zip"
  name "Nuvi"
  desc "Native macOS menu-bar dictation app with a ferrofluid visualizer"
  homepage "https://github.com/ForLess01/Nuvi_STT"

  app "Nuvi.app"

  zap trash: [
    "~/Library/Application Support/com.nuvi.app",
    "~/Library/Preferences/com.nuvi.app.plist",
  ]
end
