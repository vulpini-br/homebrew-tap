cask "quadra" do
  version "1.2.0"
  sha256 "180c0587489a632b6d59df377569d6b7238615c54086583d8d69ff3fac78b001"

  url "https://github.com/vulpini-br/quadra/releases/download/v#{version}/Quadra.zip"
  name "Quadra"
  desc "Arrange windows on a grid"
  homepage "https://github.com/vulpini-br/quadra"

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
