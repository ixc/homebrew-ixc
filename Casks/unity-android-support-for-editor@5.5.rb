cask 'unity-android-support-for-editor@5.5' do
  version '5.5.6f1,3fb31a95adee'
  sha256 'c9f73e21c6e63c49945ef9e9d0ec2bf7cd761f5b9e9faf3b5cb654cf5ede90a2'

  url "https://download.unity3d.com/download_unity/#{version.after_comma}/MacEditorTargetInstaller/UnitySetup-Android-Support-for-Editor-#{version.before_comma}.pkg"
  appcast 'https://unity3d.com/get-unity/download/archive'
  name 'Unity Android Build Support'
  homepage 'https://unity3d.com/unity/'

  depends_on cask: 'unity@5.5'

  pkg "UnitySetup-Android-Support-for-Editor-#{version.before_comma}.pkg"

  uninstall pkgutil: 'com.unity3d.AndroidPlayer'
end
