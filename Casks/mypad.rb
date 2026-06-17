cask "mypad" do
  version "0.1.0"
  sha256 "b79d76ead17862636950b1e17830446e46437f59c023ec120ea3df3d373e4102"

  url "https://github.com/abhurisiwarak-byte/myPad/releases/download/v#{version}/myPad-#{version}.zip"
  name "myPad"
  desc "Small native macOS scratchpad app for quick notes"
  homepage "https://github.com/abhurisiwarak-byte/myPad"

  depends_on macos: :sonoma

  app "myPad.app"

  zap trash: [
    "~/Library/Application Support/myPad",
    "~/Library/Saved Application State/com.local.mypad.savedState",
  ]
end
