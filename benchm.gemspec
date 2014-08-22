# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "benchm"
  spec.version       = '1.0.1'
  spec.authors       = ["Charles Chamberlain"]
  spec.email         = ["charles@charlesetc.com"]
  spec.description   = %q{Benchm is the simplest way to time your programs.}
  spec.summary       = %q{Benchm is the simplest way to time your programs.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.require_paths = ["lib"]
end
