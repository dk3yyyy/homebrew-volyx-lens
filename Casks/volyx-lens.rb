cask "volyx-lens" do
  version "0.8.0"

  on_arm do
    sha256 "7951b4700cffdf728b4020a1bb4f77f32e97801fef256791efafaa1d2373f676"
    url "https://github.com/dk3yyyy/volyx-lens/releases/download/v#{version}/volyx-lens-#{version}-mac-arm64-unsigned.dmg"
  end
  on_intel do
    sha256 "e29d6ac42c3e98b866dc470e599a170e9c87856e246a504c13c23b808cbe50ab"
    url "https://github.com/dk3yyyy/volyx-lens/releases/download/v#{version}/volyx-lens-#{version}-mac-x64-unsigned.dmg"
  end

  name "Volyx Lens"
  desc "Private desktop AI panel for screen, microphone and meeting audio"
  homepage "https://volyxlens.pages.dev/"

  depends_on macos: ">= :ventura"

  app "Volyx Lens.app"

  caveats <<~EOS
    Volyx Lens is not notarised. If macOS blocks the first launch, right-click
    the app and choose Open, or run:

      xattr -cr "/Applications/Volyx Lens.app"
  EOS
end
