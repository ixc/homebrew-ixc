cask 'postgres-all-versions' do
  version '2.3.3e'
  sha256 'e95314aedf7a17562894b9e451fc8f35792fbf76523aecbde39700b74c872d95'

  # github.com/PostgresApp/PostgresApp/ was verified as official when first introduced to the cask
  url "https://github.com/PostgresApp/PostgresApp/releases/download/v#{version}/Postgres-#{version}-9.4-9.5-9.6-10-11-12.dmg"
  appcast 'https://github.com/PostgresApp/PostgresApp/releases.atom'
  name 'Postgres'
  homepage 'https://postgresapp.com/'

  auto_updates true
  depends_on macos: '>= :sierra'

  app 'Postgres.app'

  uninstall launchctl: "com.postgresapp.Postgres#{version.major}LoginHelper",
            quit:      [
                         "com.postgresapp.Postgres#{version.major}",
                         "com.postgresapp.Postgres#{version.major}MenuHelper",
                       ]

  zap trash: [
               '~/Library/Application Support/Postgres',
               "~/Library/Caches/com.postgresapp.Postgres#{version.major}",
               "~/Library/Cookies/com.postgresapp.Postgres#{version.major}.binarycookies",
               "~/Library/Preferences/com.postgresapp.Postgres#{version.major}.plist",
             ]
end
