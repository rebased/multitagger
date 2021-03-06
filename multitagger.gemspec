# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'multitagger/version'

Gem::Specification.new do |spec|
  spec.name          = "multitagger"
  spec.version       = Multitagger::VERSION
  spec.authors       = ["Daniel Janus"]
  spec.email         = ["daniel.janus@rebased.com"]

  spec.summary       = %q{Tag images using multiple computer vision API providers}
  spec.homepage      = "https://github.com/rebased/multitagger"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_runtime_dependency "clarifai_ruby", "~> 0.1.2"
  spec.add_runtime_dependency "algorithmia", "~> 0.9.4"
  spec.add_runtime_dependency "rest-client", "~> 2.0.0"
  spec.add_runtime_dependency "google-cloud", "~> 0.20.0"
  spec.add_runtime_dependency "microsoft_computer_vision", "~> 0.2.0"
end
