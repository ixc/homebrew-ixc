cask 'unity-ios-support-for-editor@5.5' do
  version '5.5.6f1,3fb31a95adee'
  sha256 '464fb927efa7ce0aebe32d02bafdcd719c19975382021c24be0e81fda5aacd9b'

  url "https://download.unity3d.com/download_unity/#{version.after_comma}/MacEditorTargetInstaller/UnitySetup-iOS-Support-for-Editor-#{version.before_comma}.pkg"
  appcast 'https://unity3d.com/get-unity/download/archive'
  name 'Unity iOS Build Support'
  homepage 'https://unity3d.com/unity/'

  depends_on cask: 'unity@5.5'

  pkg "UnitySetup-iOS-Support-for-Editor-#{version.before_comma}.pkg"

  uninstall pkgutil: 'com.unity3d.iOSSupport'
end
