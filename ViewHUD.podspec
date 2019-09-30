Pod::Spec.new do |spec|
  spec.name         = "ViewHUD"
  spec.version      = "0.0.1"
  spec.summary      = "一个用于ViewHUD显示的UIView分类"
  spec.description  = "用于显示HUD"
  spec.homepage     = "https://github.com/Gioures/ViewHUD"
  spec.license      = "MIT"
  spec.author             = { "Gioures" => "756119874@qq.com" }
  s.platform        = :ios, "7.0"
  spec.source       = { :git => "https://github.com/Gioures/ViewHUD.git", :tag => "v1.0" }
  spec.source_files  = "ViewHUD", "ViewHUD/ViewHUD/HUD/*.{h,m}"
  spec.dependency "MBProgressHUD", "~> 1.1.0"

end
