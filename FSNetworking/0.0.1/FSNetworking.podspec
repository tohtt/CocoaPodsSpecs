Pod::Spec.new do |s|
  s.name         = "FSNetworking"
  s.version      = "0.0.1"
  s.summary      = "foursquare's iOS networking library."
  s.homepage     = "https://github.com/foursquare/FSNetworking"
  s.license      = 'MIT'
  s.author       = { "Bryan Bonczek" => "bryan@foursquare.com" }
  s.source       = { :git => "https://github.com/aroldan/FSNetworking.git", :tag => "0.0.1" }
  s.ios.deployment_target = '5.0'
  s.osx.deployment_target = '10.7'
  s.source_files = 'src'
  s.requires_arc = true
end