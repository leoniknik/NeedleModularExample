Pod::Spec.new do |spec|
    spec.name         = 'AuthTabBar'
    spec.version      = '1.0.0'
    spec.license      = { :type => 'MIT' }
    spec.homepage     = 'https://github.com/leoniknik'
    spec.authors      = { 'Kirill Volodin' => 'volodin.kirill.a@gmail.com' }
    spec.summary      = 'AuthTabBar'
    spec.source       = { :path => '*' }
    spec.source_files = "**/*.swift"
    spec.ios.deployment_target = '13.0'
    spec.swift_version = '5.0'


    spec.dependency 'Core', '~> 1.0.0'
    spec.dependency 'ChatInterfaces', '~> 1.0.0'
    spec.dependency 'NeedleFoundation'
    
    spec.script_phase = {
      :name => 'Needle',
      :script => 'export PATH="$PATH:/opt/homebrew/bin" && SOURCEKIT_LOGGING=0 && needle generate ../DevPods/AuthTabBar/DI/NeedleGenerated.swift ../DevPods/AuthTabBar',
      :execution_position => :before_compile
    }
  end
