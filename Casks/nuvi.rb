cask "nuvi" do
  version "2.1.0"
  sha256 "03c4ffbf742ba2bdb93763fa59e2ff4312df3538c288bd34dd9004f2a67cd487"

  url "https://github.com/ForLess01/Nuvi_STT/releases/download/v#{version}/Nuvi.zip"
  name "Nuvi"
  desc "Native macOS menu-bar dictation app with a ferrofluid visualizer"
  homepage "https://github.com/ForLess01/Nuvi_STT"

  app "Nuvi.app"

  caveats <<~EOS
    Nuvi is not notarized (notarization requires a paid Apple Developer account),
    so macOS may block it on first launch. To allow it, run once:

      xattr -dr com.apple.quarantine "/Applications/Nuvi.app"

    …or right-click Nuvi.app -> Open -> Open. Then grant Microphone, Speech
    Recognition and Accessibility in System Settings > Privacy & Security.
  EOS

  zap trash: [
    "~/Library/Application Support/com.nuvi.app",
    "~/Library/Application Support/FluidAudio",
    "~/Library/Preferences/com.nuvi.app.plist",
  ]
end
