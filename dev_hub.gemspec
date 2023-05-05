require_relative "lib/dev_hub/version"

Gem::Specification.new do |spec|
  spec.name        = "dev_hub"
  spec.version     = DevHub::VERSION
  spec.authors     = ["Chongchen Chen"]
  spec.email       = ["chochen@paypal.com"]
  spec.homepage    = "https://github.com/fduseless/dev_hub"
  spec.summary     = "Man page for rails generators"
  spec.description = "Man page for rails generators"
  spec.license     = "MIT"
  
  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the "allowed_push_host"
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  spec.metadata["allowed_push_host"] = "https://rubygems.org"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/fduseless/dev_hub"
  spec.metadata["changelog_uri"] = "https://github.com/fduseless/dev_hub/CHANGELOG.md"

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
  end

  spec.add_dependency "rails", ">= 6.0"
end
