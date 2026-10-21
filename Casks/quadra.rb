cask "quadra" do
  version "1.0.1"
  sha256 "e699633bf403ea1f99fee6e77342144140e3ea2b5357620835c8822f947f0fbe"

  url "https://github.com/ahrmichelon/quadra/releases/download/v#{version}/Quadra.zip"
  name "Quadra"
  desc "Arrange windows on a grid"
  homepage "https://github.com/ahrmichelon/quadra"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "Quadra.app"

  uninstall quit: "io.github.ahrmichelon.quadra"

  zap trash: "~/Library/Preferences/io.github.ahrmichelon.quadra.plist"

  caveats <<~EOS
    Quadra is not notarized by Apple yet, so macOS blocks it the first time you open it:
    open System Settings > Privacy & Security and click "Open Anyway".
    Then allow Quadra in System Settings > Privacy & Security > Accessibility.
  EOS
end
