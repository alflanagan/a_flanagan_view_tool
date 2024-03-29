lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'a_flanagan_view_tool/version'
require 'a_flanagan_view_tool/renderer.rb'

Gem::Specification.new do |spec|
  spec.name          = 'a_flanagan_view_tool'
  spec.version       = AFlanaganViewTool::VERSION
  spec.authors       = ['A. Lloyd Flanagan']
  spec.email         = ['a.lloyd.flanagan@gmail.com']

  spec.summary       = 'A copy of the Devcamp View Tool from Dissecting RoR course (udemy.com)'
  spec.description   = 'Provides generated HTML data for a Rails application'
  spec.homepage      = 'https://github.com/alflanagan/a_flanagan_view_tool'
  spec.license       = 'MIT'

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.17'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
end
