cask 'unity-windows-support-for-editor@5.5' do
  version '5.5.6f1,3fb31a95adee'
  sha256 '3a0433ecf808c632e8ba794562fa1505dc0b76231d73dc5c937a0ece451e34cf'

  url "https://download.unity3d.com/download_unity/#{version.after_comma}/MacEditorTargetInstaller/UnitySetup-Windows-Support-for-Editor-#{version.before_comma}.pkg"
  appcast 'https://unity3d.com/get-unity/download/archive'
  name 'Unity Windows (Mono) Build Support'
  homepage 'https://unity3d.com/unity/'

  depends_on cask: 'unity@5.5'

  pkg "UnitySetup-Windows-Support-for-Editor-#{version.before_comma}.pkg"

  uninstall pkgutil: 'com.unity3d.WindowsStandaloneSupport'
end
