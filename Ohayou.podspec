Pod::Spec.new do |s|
  s.name         = "Ohayou"
  s.version      = "1.0.0"
  s.summary      = "Swifty Date"
  s.description  = <<-DESC
                    Ohayou creates a value-type representation of NSDate with convenience methods.
                   DESC
  s.homepage     = "https://github.com/bradhilton/Ohayou"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author       = { "Brad Hilton" => "brad@skyvive.com" }
  s.source       = { :git => "https://github.com/bradhilton/Ohayou.git", :tag => "1.0.0" }

  s.ios.deployment_target = "8.0"
  s.osx.deployment_target = "10.9"

  s.source_files  = "Ohayou", "Ohayou/**/*.{swift,h,m}"
  s.requires_arc = true
end
