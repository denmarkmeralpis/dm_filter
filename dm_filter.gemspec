# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'dm_filter/version'

Gem::Specification.new do |spec|
  spec.name          = "dm_filter"
  spec.version       = DmFilter::VERSION
  spec.authors       = ["Nujian Den Mark Meralpis"]
  spec.email         = ["denmark@nueca.net"]

  spec.summary       = %q{Fetch ActiveRecord list using specified period as a parameter}
  spec.description   = %q{DmFilter is a very light weight Rails plugin that makes it easy to fetch your ActiveRecord lists using date or text as a parameter.}
  spec.homepage      = "http://www.genmcrg.com/experiment/gems/dm_filter"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
end
