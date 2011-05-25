lib = File.expand_path '../lib', __FILE__
$:.unshift lib unless $:.include? lib

require 'rixius/version'

Gem::Specification.new do |s|
  s.name        = 'rixius'
  s.version     = Rixius::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Stephen 'Rixius' Middleton"]
  s.email       = ['boss@rixi.us']
  s.homepage    = "http://rixius.github.com/rixius"
  s.summary     = "Rixius's Helpers"
  s.description = "Module of helpful modules, classes, and mixins"

  s.required_rubygems_version = '>= 1.3.6'
  s.rubyforge_project         = 'rixius'

  s.files         = Dir.glob("{bin,lib}/**/*") + %W(LICENSE README.md)
  s.executables   = []
  s.require_path  = 'lib'
end
