cask "quedo" do
  version "0.1.34"
  sha256 "719c35ddd5ee150e6098f2b95b4fd087d2402bd8c1c883bec2ec651fae7ea8ff"

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
