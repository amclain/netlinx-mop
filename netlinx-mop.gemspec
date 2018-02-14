version = File.read(File.expand_path('../version', __FILE__)).strip

Gem::Specification.new do |s|
  s.name      = 'netlinx-mop'
  s.version   = version
  s.date      = Time.now.strftime '%Y-%m-%d'
  s.summary   = 'A model-oriented programming approach to NetLinx.'
  s.description = "A model-oriented programming approach to NetLinx."
  s.homepage  = 'https://github.com/amclain/netlinx-mop'
  s.authors   = ['Alex McLain']
  s.email     = 'alex@alexmclain.com'
  s.license   = 'MIT'
  
  s.files     =
    ['license.txt', 'README.md'] +
    Dir['bin/**/*'] +
    Dir['lib/**/*'] +
    Dir['doc/**/*']
  
  s.executables = [
  ]
  
  s.add_development_dependency 'rake',      '~> 12.3'
  s.add_development_dependency 'yard',      '~> 0.9', '>= 0.9.11'
  s.add_development_dependency 'rspec',     '~> 3.7'
  s.add_development_dependency 'rspec-its', '~> 1.2'
  s.add_development_dependency 'fivemat',   '~> 1.3'
  s.add_development_dependency 'pry'
  s.add_development_dependency 'rb-readline'
end
