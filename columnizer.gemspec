require 'lib/columnizer/version'

spec = Gem::Specification.new do |s|
  
  s.name = 'columnizer'
  s.author = 'John Crepezzi'
  s.description = 'Put multi-dimensional arrays into neat columns'
  s.email = 'john.crepezzi@gmail.com'
  s.files = Dir['lib/**/*.rb']
  s.has_rdoc = true
  s.homepage = 'http://github.com/seejohnrun/columnizer'
  s.platform = Gem::Platform::RUBY
  s.require_paths = ['lib']
  s.summary = 'Neat columns'
  s.test_files = Dir.glob('spec/*.rb')
  s.version = Columnizer::version
  s.rubyforge_project = "columnizer"

end
