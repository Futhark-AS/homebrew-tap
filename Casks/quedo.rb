cask "quedo" do
  version "0.1.19"
  sha256 "46ed837c9b53c57a828b185d3a644e54a2022827963ceca489cabaa66c39ebcd"

  url "https://github.com/Futhark-AS/quedo/releases/download/v#{version}/Quedo.dmg",
      verified: "github.com/Futhark-AS/quedo/"
  name "Quedo"
  desc "Voice-to-text tool powered by Groq Whisper API"
  homepage "https://github.com/Futhark-AS/quedo"

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: ">= :sonoma"

  app "Quedo.app"

  uninstall quit: "com.futhark.quedo"

  zap trash: [
    "~/Library/Application Support/Quedo",
    "~/Library/Application Support/quedo",
  ]
end
