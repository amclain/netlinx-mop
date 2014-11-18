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
  s.license   = 'MiT'
  
  s.files     =
    ['license.txt', 'README.md'] +
    Dir['bin/**/*'] +
    Dir['lib/**/*'] +
    Dir['doc/**/*']
  
  s.executables = [
  ]
  
  s.add_development_dependency 'rake',      '~> 10.3.2'
  s.add_development_dependency 'yard',      '~> 0.8.7.6'
  s.add_development_dependency 'rspec',     '~> 3.1.0'
  s.add_development_dependency 'rspec-its', '~> 1.1.0'
  s.add_development_dependency 'fivemat',   '~> 1.3.1'
  s.add_development_dependency 'pry'
  s.add_development_dependency 'rb-readline'
end
