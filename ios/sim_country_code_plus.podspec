Pod::Spec.new do |s|
  s.name             = 'sim_country_code_plus'
  s.version          = '0.1.0'
  s.summary          = 'A Flutter plugin to get the SIM country code.'
  s.description      = <<-DESC
                       A Flutter plugin to get the SIM country code using CoreTelephony on iOS.
                       DESC
  s.homepage         = 'https://example.com'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Your Name' => 'your.email@example.com' }
  s.source           = { :path => '.' }
  s.source_files     = 'Classes/**/*'
  s.public_header_files = 'Classes/**/*.h'
  s.dependency 'Flutter'
  s.platform         = :ios, '10.0'
  s.swift_version    = '5.0'
end 