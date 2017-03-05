
Pod::Spec.new do |s|

  s.name         = "PPCounter"

  s.version      = "0.3.0"

  s.osx.deployment_target = '10.10'

  s.ios.deployment_target = '7.0'

  s.summary      = "一款优雅的数字/金额增减动效控件,支持UILabel、UIButton显示"

  s.homepage     = "https://github.com/jkpang/PPCounter.git"
 
  s.license      = { :type => "MIT", :file => "LICENSE" }

  s.author       = { "jkpang" => "jkpang@outlook.com" }

  s.source       = { :git => "https://github.com/jkpang/PPCounter.git", :tag => s.version.to_s }

  s.source_files = "PPCounter/PPCounter/*.{h,m}"

  s.subspec 'Core' do |core|
    core.exclude_files = 'PPCounter/PPCounter/UILabel+PPCounter.{h,m}'
    core.exclude_files = 'PPCounter/PPCounter/UIButton+PPCounter.{h,m}'
    end

  s.requires_arc = true

end
