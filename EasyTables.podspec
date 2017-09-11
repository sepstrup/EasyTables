Pod::Spec.new do |s|

  s.name         = "EasyTables"
  s.version      = "0.1.0"
  s.summary      = "Create tables and manage the content of them much easier"
  s.description  = "See more: https://github.com/sepstrup/EasyTables/blob/master/README.md"

  s.homepage     = "http://www.powerlabs.com"
  s.license      = "MIT"
  s.author       = { "Peter Sepstrup" => "peter@sepstrupnet.dk" }
  s.platform     = :ios
  s.source       = { :git => "https://github.com/sepstrup/EasyTables.git", :tag => "#{s.version}" }

  s.source_files = "EasyTables", "EasyTables/**/*.{h,m,swift}"
  s.pod_target_xcconfig = { 'SWIFT_VERSION' => '3' }




end
