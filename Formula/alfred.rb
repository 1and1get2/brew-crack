cask 'alfred' do
  version '3.7_932'
  sha256 "22588d2a8b8bc274b8980a53e2d34329f00e946b989337828171108e2dc987fd"

  url "https://drive.google.com/uc?export=download&id=1XTtYmwy-ZC5guCKTNn-ZDm4_xvaR_9Pc"
  appcast 'https://www.alfredapp.com/app/update/general.xml'
  name 'Alfred'
  homepage 'https://www.alfredapp.com/'

  auto_updates true
  accessibility_access true

  app "Alfred #{version.major}.app"

  uninstall quit:       'com.runningwithcrayons.Alfred-3',
            login_item: 'Alfred 3'

  zap trash: [
               '~/Library/Application Support/Alfred 3',
               '~/Library/Caches/com.runningwithcrayons.Alfred-3',
               '~/Library/Preferences/com.runningwithcrayons.Alfred-3.plist',
               '~/Library/Preferences/com.runningwithcrayons.Alfred-Preferences-3.plist',
               '~/Library/Saved Application State/com.runningwithcrayons.Alfred-Preferences-3.savedState',
             ]
end