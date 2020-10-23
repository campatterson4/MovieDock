require_relative 'lib/movie_dock/version'

Gem::Specification.new do |spec|
  spec.name          = "movie_dock"
  spec.version       = MovieDock::VERSION
  spec.authors       = ["campatterson4"]
  spec.email         = ["camrynpatterson@yahoo.com"]

  +  spec.summary       = %q{Write a short summary, because RubyGems requires one.}
  +  spec.description   = %q{Write a longer description or delete this line.}
  + spec.homepage      = "https://github.com/campatterson4"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

    if spec.respond_to?(:metadata)
  spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
    else
      raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
    end

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
  

  spec.add_development_dependency "bundler", "~> 2.1.4"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_dependency "nokogiri"
  spec.add_development_dependency "pry"
end
