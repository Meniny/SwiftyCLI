Pod::Spec.new do |s|
  s.name        = 'SwiftyCLI'
  s.module_name = 'SwiftyCLI'
  s.version     = '1.0.0'
  s.summary     = 'Swifty command line tool.'

  s.homepage    = 'https://github.com/Meniny/SwiftyCLI'
  s.license     = { type: 'MIT', file: 'LICENSE.md' }
  s.authors     = { 'Elias Abel' => 'admin@meniny.cn' }
  s.social_media_url = 'https://meniny.cn/'

  s.osx.deployment_target     = '10.9'

  s.requires_arc        = true
  s.source              = { git: 'https://github.com/Meniny/SwiftyCLI.git', tag: s.version.to_s }
  s.source_files        = 'SwiftyCLI/**/*.swift'
  s.pod_target_xcconfig = { 'SWIFT_VERSION' => '4.1' }
  s.swift_version       = '4.1'
end
