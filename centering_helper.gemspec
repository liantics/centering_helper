# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'centering_helper/version'

Gem::Specification.new do |spec|
  spec.name          = "centering_helper"
  spec.version       = CenteringHelper::VERSION
  spec.authors       = ["Liane Allen"]
  spec.email         = ["liantics.antics@gmail.com"]
  spec.summary       = %q{Automatically place divs for centering an image or other content into your html.}
  spec.description   = %q{A view helper to make centering images and other content easy.}
  spec.homepage      = "http://www.github.com/liantics/centering_helper"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
end
