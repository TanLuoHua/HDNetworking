Pod::Spec.new do |s|
  s.name         = "HDNetworking"
  s.version      = "1.0.0"
  s.summary      = "A simple web request"
  s.homepage     = "https://github.com/HeDong1117/HDNetworking"
  s.license      = "MIT"
  s.author       = { "HeDong" => "57008939@qq.com" }
  s.source       = { :git => "https://github.com/HeDong1117/HDNetworking.git", :tag => s.version }
  s.platform     = :ios, "7.0"
  s.requires_arc = true

  s.source_files = "HDNetworking", "HDNetworking/**/{HDNetworking,UIImage+HDExtension}.{h,m}"
  s.dependency "AFNetworking", "~> 3.1.0"

  s.subspec "HDSingleton" do |ss|
    ss.source_files = "HDNetworking", "HDNetworking/**/HDSingleton.{h,m}"
  end

  s.subspec "Modle" do |ss|
    ss.source_files = "HDNetworking", "HDNetworking/**/HDPicModle.{h,m}"
  end
end
