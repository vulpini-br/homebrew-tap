cask "quadra" do
  version "1.1.0"
  sha256 "9c7fa64f1b8d3369ce590eb17a135053935ffdb6ce549f2d32511e11ab745d2d"

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
