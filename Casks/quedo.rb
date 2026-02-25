cask "quedo" do
  version "0.1.20"
  sha256 "7d942332d78199235eace64a7ec99745c926318a18280c2971676225b92210d8"

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
