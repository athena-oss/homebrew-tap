class PluginSelenium < Formula
  desc "Plugin to handle browser automation using Selenium."
  homepage "https://github.com/athena-oss/plugin-selenium"
  url "https://github.com/athena-oss/plugin-selenium/archive/v0.3.2.tar.gz"
  version "0.3.2"
  sha256 "9fa240a2b0e9f365c3c2210cb7f92e3d756848478ff47cb663f870b1a4c52a87"
  keg_only "Not meant for standalone usage - this is an Athena plugin"

  depends_on "athena"

  def install
        prefix.install Dir["*"]
  end

  def post_install
        system "ln -s #{prefix} $(#{HOMEBREW_PREFIX}/bin/brew --prefix athena)/plugins/selenium"
  end
end
