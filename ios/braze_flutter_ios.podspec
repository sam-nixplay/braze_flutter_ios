Pod::Spec.new do |s|
    s.name             = 'braze_flutter_ios'
    s.version          = '0.0.1'
    s.summary          = 'A Flutter plugin for Braze SDK (iOS only)'
    s.description      = <<-DESC
  A Flutter plugin for Braze SDK (iOS only)
                         DESC
    s.homepage         = 'http://example.com'
    s.license          = { :file => '../LICENSE' }
    s.author           = { 'Nixplay' => 'email@example.com' }
    s.source           = { :path => '.' }
    s.ios.deployment_target = '14.0'
    s.tvos.deployment_target = '12.0'
    s.static_framework = true

    s.source_files = 'Classes/**/*'
    s.dependency 'Flutter'
    s.dependency 'BrazeKit', '~> 9.3.1'
    
    s.swift_version = '5.0'
  end