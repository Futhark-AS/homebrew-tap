cask "quedo" do
  version "0.1.37"
  sha256 "86de7ae0b2bf6e3092eeea2f1ee1b9bd9f994b61274254c01fd8b330beeb9585"

  url "https://github.com/Futhark-AS/quedo/releases/download/v#{version}/Quedo.dmg",
      verified: "github.com/Futhark-AS/quedo/"
  name "Quedo"
  desc "Voice-to-text tool powered by Groq Whisper API"
  homepage "https://github.com/Futhark-AS/quedo"

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Quedo.app"

  uninstall quit: "com.futhark.quedo"

  zap trash: [
    "~/Library/Application Support/Quedo",
    "~/Library/Application Support/quedo",
  ]
end
