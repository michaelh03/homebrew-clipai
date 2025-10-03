cask "clipai" do
  version "1.0.0"  # Update with your actual version
  sha256 "7c9206159c4593ade2130515b961669fe7a6bfb1e0b21ce986faa78aba1147ba"  # Calculate this from your .dmg or .zip

  url "https://github.com/michaelh03/ClipAi/releases/download/ClipAi-1.0.0/ClipAi-1.0.0.dmg"
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
