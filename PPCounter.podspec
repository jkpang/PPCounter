
Pod::Spec.new do |s|

  s.name         = "PPCounter"

  s.version      = "0.5.0"

  s.osx.deployment_target = '10.10'

  s.ios.deployment_target = '7.0'

  s.summary      = "iOS与macOS中一款优雅的数字/金额增减动效控件"

  s.homepage     = "https://github.com/jkpang/PPCounter.git"
 
  s.license      = { :type => "MIT", :file => "LICENSE" }

  s.author       = { "jkpang" => "jkpang@outlook.com" }

  s.source       = { :git => "https://github.com/jkpang/PPCounter.git", :tag => s.version.to_s }

  s.source_files = 'PPCounter/PPCounter.h'

  s.subspec 'Core' do |core|
    core.osx.deployment_target = '10.10'
    core.ios.deployment_target = '7.0'
    core.source_files = 'PPCounter/PPCounter/Core/*.{h,m}'
    end

  s.subspec 'UIKit' do |ui|
    ui.ios.deployment_target = '7.0'
    ui.source_files = 'PPCounter/PPCounter/UIKit/*.{h,m}'
    ui.dependency  'PPCounter/PPCounter/Core'
    end

  s.requires_arc = true

end
