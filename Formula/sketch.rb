cask 'sketch' do
  version '51.3'
  sha256 "9b38ed7d68bfba6737c37dd46f79d7fb997619f7d5a3dd78f34be4c213f98fcd"

  url "https://drive.google.com/uc?export=download&id=13xqn_j6QaITO0IC9kbVBFVW-bKIMlZZ6"
  appcast 'https://download.sketchapp.com/sketch-versions.xml'
  name 'Sketch'
  homepage 'https://www.sketchapp.com/'

  auto_updates true

  app 'Sketch.app'

  uninstall quit:       'com.runningwithcrayons.Alfred-3',
            login_item: 'Alfred 3'

  zap trash: [
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.bohemiancoding.sketch3.sfl*',
               '~/Library/Application Support/com.bohemiancoding.sketch3',
               '~/Library/Caches/com.bohemiancoding.sketch3',
               '~/Library/Caches/com.plausiblelabs.crashreporter.data/com.bohemiancoding.sketch3',
               '~/Library/Logs/com.bohemiancoding.sketch3',
               '~/Library/Preferences/com.bohemiancoding.sketch3.LSSharedFileList.plist',
               '~/Library/Preferences/com.bohemiancoding.sketch3.plist',
               '~/Library/Cookies/com.bohemiancoding.sketch3.binarycookies',
]
end