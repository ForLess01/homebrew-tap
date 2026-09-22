cask "nuvi" do
  version "2.2.0"
  sha256 "70ecab3c8567af3e688f3c8c8635298c618b7badfde617134a05e1b824f50acf"

  url "https://github.com/ForLess01/Nuvi_STT/releases/download/v#{version}/Nuvi.zip"
  name "Nuvi"
  desc "Native macOS menu-bar dictation app with a ferrofluid visualizer"
  homepage "https://github.com/ForLess01/Nuvi_STT"

  depends_on macos: :tahoe
  depends_on arch: :arm64

  app "Nuvi.app"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "{{appdir}}/Nuvi.app"], must_succeed: false
  end

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
