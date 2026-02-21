cask "dict8" do
  version "0.1.0"
  sha256 "6b410db463cb1276d563164287671773995a73b9199a27663d2b56e6bbda0954"

  url "https://github.com/qazaqninja/dict8/releases/download/v#{version}/dict8-macos.zip"
  name "dict8"
  desc "Local offline speech-to-text for macOS"
  homepage "https://github.com/qazaqninja/dict8"

  app "dict8.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/dict8.app"],
                   sudo: false
  end

  zap trash: [
    "~/Library/Preferences/com.dict8.app.plist",
  ]
end
