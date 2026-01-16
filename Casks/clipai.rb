cask "clipai" do
  version "1.0.3"  # Update with your actual version
  sha256 "6f08d94b5eca71248d33d96581d849a0edee0fe8c26b83f3a876b0a0458c789d"  # Calculate this from your .dmg or .zip

  url "https://github.com/michaelh03/ClipAi/releases/download/ClipAi-1.0.3/ClipAI-1.0.3.dmg"
  name "ClipAi"
  desc " Clipboard manager with sparkle of AI ✨"  # Add your app description
  homepage "https://github.com/michaelh03/ClipAi"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "ClipAi.app"

  # If your app requires specific permissions or setup
  # postflight do
  #   system_command "/usr/bin/open",
  #                  args: ["-a", "ClipAi"]
  # end

  # Uninstall script if needed
  # uninstall quit: "com.yourcompany.clipai"

  zap trash: [
    "~/Library/Application Support/ClipAI",
    "~/Library/Preferences/com.michaelh.clipai.plist",
    "~/Library/Caches/com.michaelh.clipai",
  ]
end
