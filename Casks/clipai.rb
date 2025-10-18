cask "clipai" do
  version "1.0.1"  # Update with your actual version
  sha256 "dad87ea96d1a0e61493f79c02c8d77256ef83d999bf59f43f0c9560bad601e3d"  # Calculate this from your .dmg or .zip

  url "https://github.com/michaelh03/ClipAi/releases/download/ClipAi-1.0.1/ClipAI-1.0.1.dmg"
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
