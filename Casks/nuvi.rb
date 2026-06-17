cask "nuvi" do
  version "1.0.0" # Cambialo por tu versión del release
  sha256 "PEGAR_AQUÍ_EL_HASH_SHA256"

  url "https://github.com/ForLess01/Nuvi_STT/releases/download/v#{version}/Nuvi.zip"
  name "Nuvi"
  desc "Native macOS menu-bar dictation app with a ferrofluid visualizer"
  homepage "https://github.com/ForLess01/Nuvi_STT"

  app "Nuvi.app"

  zap trash: [
    "~/Library/Application Support/Nuvi",
    "~/Library/Preferences/nuvi.settings.plist", # Ajustar según tu bundle ID
  ]
end
