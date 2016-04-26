Pod::Spec.new do |s|
  s.name                  = 'BlocksKitForExtentions'
  s.version               = '2.2.8'
  s.license               = 'MIT'
  s.summary               = 'The Objective-C block utilities you always wish you had.'
  s.homepage              = 'https://zwaldowski.github.io/BlocksKit'
  s.author                = { 'Zachary Waldowski' => 'zach@waldowski.me',
                              'Alexsander Akers'  => 'a2@pnd.mn' }
  s.source                = { :git => 'https://github.com/HouseMatrerial/BlocksKitForExtensions', :tag => "v#{s.version}" }
  s.requires_arc          = true
  s.osx.deployment_target = '10.8'
  s.ios.deployment_target = '6.0'
  s.watchos.deployment_target = '2.0'

  s.default_subspec = 'All'
  s.subspec 'All' do |ss|
    ss.dependency 'BlocksKitForExtentions/Core'
    ss.dependency 'BlocksKitForExtentions/DynamicDelegate'
    ss.ios.dependency 'BlocksKitForExtentions/MessageUI'
    ss.ios.dependency 'BlocksKitForExtentions/QuickLook'
    ss.ios.dependency 'BlocksKitForExtentions/UIKit'
  end

  s.subspec 'Core' do |ss|
    ss.source_files = 'BlocksKitForExtentions/BlocksKit.h', "BlocksKitForExtentions/BKDefines.h", 'BlocksKitForExtentions/Core/*.{h,m}'
  end

  s.subspec 'DynamicDelegate' do |ss|
    ss.source_files = 'BlocksKitForExtentions/DynamicDelegate/*.{h,m}', 'BlocksKitForExtentions/DynamicDelegate/Foundation/*.{h,m}'
  end

  s.subspec 'MessageUI' do |ss|
    ss.dependency 'BlocksKitForExtentions/Core'
    ss.dependency 'BlocksKitForExtentions/DynamicDelegate'
    ss.platform = :ios
    ss.source_files = 'BlocksKitForExtentions/BlocksKit+MessageUI.h', 'BlocksKitForExtentions/MessageUI/*.{h,m}'
    ss.ios.frameworks = 'MessageUI'
  end

  s.subspec 'QuickLook' do |ss|
    ss.dependency 'BlocksKitForExtentions/Core'
    ss.dependency 'BlocksKitForExtentions/DynamicDelegate'
    ss.platform = :ios
    ss.source_files = 'BlocksKitForExtentions/BlocksKit+QuickLook.h', 'BlocksKitForExtentions/QuickLook/*.{h,m}'
    ss.ios.frameworks = 'QuickLook'
  end

  s.subspec 'UIKit' do |ss|
    ss.dependency 'BlocksKitForExtentions/Core'
    ss.dependency 'BlocksKitForExtentions/DynamicDelegate'
    ss.platform = :ios
    ss.source_files = 'BlocksKitForExtentions/BlocksKit+UIKit.h', 'BlocksKitForExtentions/UIKit/*.{h,m}'
  end
end
