cask 'fitbit-connect' do
  version '2.0.2.7201-2018-03-30'
  sha256 '5eaf8042e782a5c22b654acbffcd59a783cf72a9f604b9403b546b7f18319b22'

  url "https://cache.fitbit.com/FitbitConnect/FitbitConnect-v#{version}.dmg"
  name 'Fitbit Connect'
  homepage 'https://www.fitbit.com/'

  pkg 'Install Fitbit Connect.pkg'

  uninstall script:  {
                       executable: 'Uninstall Fitbit Connect.app/Contents/Resources/uninstall.sh',
                       sudo:       true,
                     },
            pkgutil: 'com.fitbit.pkg.GalileoInstaller'
end
