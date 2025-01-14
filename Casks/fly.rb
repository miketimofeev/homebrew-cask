cask "fly" do
  version "6.7.3"
  sha256 "3e4a347868c444c6dc4b595082e508b6242d6fbd14a9475c576058ceda51294e"

  url "https://github.com/concourse/concourse/releases/download/v#{version}/fly-#{version}-darwin-amd64.tgz"
  appcast "https://github.com/concourse/concourse/releases.atom"
  name "fly"
  desc "Official CLI tool for Concourse CI"
  homepage "https://github.com/concourse/concourse"

  binary "fly"

  postflight do
    Quarantine.release!(download_path: "$(brew --prefix)/bin/fly") if Quarantine.available?
  end
end
