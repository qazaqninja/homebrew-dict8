cask "dict8" do
  version "0.1.0"
  sha256 "34ca08bd3a6de12f33ff1caeffbf122d8ee75da98b01dce3f3ea81a92443e38b"

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
