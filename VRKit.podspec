Pod::Spec.new do |s|

  s.name         = "VRKit"
  s.version      = "0.2"
  s.summary      = "VRKit turns your app into Virtual Relity App."
  s.platform = :ios
  s.ios.deployment_target = '8.0'
  s.requires_arc = true

  s.homepage = "https://github.com/ihorrapalyuk/VRKit.git"

  s.license = { :type => 'Copyright', :file => 'LICENSE' }

  s.author = { "VoidStudio" => "i.rapalyuk2012@gmail.com" }

  s.source = { :git => "https://github.com/ihorrapalyuk/VRKit.git", :tag => "0.2"}

  s.vendored_frameworks = 'VRKit.framework'

  s.framework  = "UIKit"

end
