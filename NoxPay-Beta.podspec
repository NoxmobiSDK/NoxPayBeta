#
#  Be sure to run `pod spec lint NoxPayBeta.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |spec|

  # ―――  Spec Metadata  ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  These will help people to find your library, and whilst it
  #  can feel like a chore to fill in it's definitely to your advantage. The
  #  summary should be tweet-length, and the description more in depth.
  #

  spec.name         = "NoxPay-Beta"
  spec.version      = "1.0.2"
  spec.summary      = "A aggregate payment SDK-Beta provided Nox."
  spec.homepage     = "https://github.com/NoxmobiSDK/NoxPayBeta"
  spec.license      = "MIT"
  spec.author       = { "gaochong" => "gaochong@noxgroup.com" }
  spec.platform     = :ios, "10.0"
  spec.source       = { :git => "https://github.com/NoxmobiSDK/NoxPayBeta.git", :tag => "#{spec.version}" }
  spec.pod_target_xcconfig = { 'OTHER_LDFLAGS' => '-lObjC' }
  spec.requires_arc = true

  spec.subspec 'Pay' do |ss|
    ss.source_files = "NoxPaySDK.framework/Headers/*.{h}"
    ss.ios.vendored_frameworks = 'NoxPaySDK.framework'
    ss.dependency 'AFNetworking'
    ss.dependency 'GTMBase64'
    ss.dependency 'YYCache'
    ss.dependency 'MJExtension'
    ss.dependency 'Firebase/Analytics'
    ss.dependency 'Firebase/RemoteConfig'
  end

end
