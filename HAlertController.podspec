# This is Git's per-user configuration file.
Pod::Spec.new do |s|
  s.name         = "HAlertController"
  s.version      = "1.0.0"
  s.summary      = "集成UIAlertView,UIActionSheet,UIAlertController"
  s.homepage     = "https://github.com/vivihu/HAlertController"
  s.license      = "MIT"
  s.authors = { '胡伟伟' => 'huweiwei1991@gmail.com' }
  s.platform     = :ios, "5.0"
  s.source       = { :git => "https://github.com/vivihu/HAlertController.git", :tag => s.version }
  s.source_files = 'HAlertController/**/*.{h,m}'
  s.requires_arc = true
end


