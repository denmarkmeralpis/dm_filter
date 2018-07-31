lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'dm_filter/version'

Gem::Specification.new do |spec|
  spec.name          = 'dm_filter'
  spec.version       = DmFilter::VERSION
  spec.authors       = ['Nujian Den Mark Meralpis']
  spec.email         = ['denmarkmeralpis@gmail.com']

  spec.summary       = 'Fetch ActiveRecord list using specified period as a parameter'
  spec.description   = 'DmFilter is a very light weight Rails plugin that makes it easy to fetch your ActiveRecord lists using date or text as a parameter.'
  spec.homepage      = 'https://github.com/denmarkmeralpis/dm_filter'
  spec.license       = 'MIT'

  raise 'RubyGems 2.0 or newer is required to protect against public gem pushes.' unless spec.respond_to?(:metadata)

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'activesupport'
  spec.add_development_dependency 'bundler', '~> 1.12'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
end
