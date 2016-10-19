
Pod::Spec.new do |s|

  s.name         = "PPCounter"
  s.version      = "0.1.0"
  s.summary      = "一款简单实用的数字加减动画,支持UILabel、UIButton显示"

  s.homepage     = "https://github.com/jkpang/PPCounter.git"
 
  s.license      = { :type => "MIT", :file => "LICENSE" }

  s.author       = { "jkpang" => "jkpang@outlook.com" }

  s.platform     = :ios, "7.0"

  s.source       = { :git => "https://github.com/jkpang/PPCounter.git", :tag => s.version.to_s }

  s.source_files = "PPCounter/PPCounter/*.{h,m}"

  s.requires_arc = true

end
