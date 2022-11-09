Pod::Spec.new do |spec|
    spec.name         = 'ChatInterfaces'
    spec.version      = '1.0.0'
    spec.license      = { :type => 'MIT' }
    spec.homepage     = 'https://github.com/leoniknik'
    spec.authors      = { 'Kirill Volodin' => 'volodin.kirill.a@gmail.com' }
    spec.summary      = 'ChatInterfaces'
    spec.source       = { :path => '*' }
    spec.source_files = "**/*.swift"
    spec.ios.deployment_target = '13.0'
    spec.swift_version = '5.0'

  end