lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "davijay_view_tool/version"

Gem::Specification.new do |spec|
  spec.name          = "davijay_view_tool"
  spec.version       = DavijayViewTool::VERSION
  spec.authors       = ["vijayda1891"]
  spec.email         = ["vijayda2009@gmail.com"]

  spec.summary       = %q{Various view specific methods for application.}
  spec.description   = %q{Provides HTML data for application view.}
  spec.homepage      = "https://davijay.com"
  spec.license       = "MIT"

  spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/vijayda1891/davijay_view_tool"
  spec.metadata["changelog_uri"] = "https://github.com/vijayda1891/davijay_view_tool"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
