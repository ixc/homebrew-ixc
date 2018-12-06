cask 'unity@5.5' do
  version '5.5.6f1,3fb31a95adee'
  sha256 '90dc52fc4db4f130c5c597d3153beeb8cf9b6177b12002e4e944dc4c444e2b86'

  url "https://download.unity3d.com/download_unity/#{version.after_comma}/MacEditorInstaller/Unity-#{version.before_comma}.pkg"
  appcast 'https://unity3d.com/get-unity/download/archive'
  name 'Unity Editor'
  homepage 'https://unity3d.com/unity/'

  pkg "Unity-#{version.before_comma}.pkg"

  uninstall quit:    'com.unity3d.UnityEditor5.x',
            pkgutil: 'com.unity3d.UnityEditor5.x',
            delete:  '/Applications/Unity/Unity.app',
            rmdir:   '/Applications/Unity'
end
