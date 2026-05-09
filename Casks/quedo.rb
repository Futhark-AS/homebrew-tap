cask "quedo" do
  version "0.1.32"
  sha256 "a4612c4dca7bf96fa28819f23a5acaa6ff0c5bee3fccbbd444225ffb4cdd4a65"

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
