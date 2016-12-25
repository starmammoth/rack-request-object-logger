# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rack-request-object-logger/version'

Gem::Specification.new do |spec|
  spec.name          = "rack-request-object-logger"
  spec.version       = RackRequestObjectLogger::VERSION
  spec.authors       = ["Ivan Stana"]
  spec.email         = ["ronon@myrtana.sk"]

  spec.summary       = %q{Log HTTP requests via Rack stack to an object. You can use any object.}
  spec.description   = %q{Log HTTP requests via Rack stack to an object. You can use any object, i.e. ActiveRecord model}
  spec.homepage      = "https://github.com/starmammoth/rack-request-object-logger"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "rack"
  spec.add_development_dependency "bundler", "~> 1.13"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.5"
end