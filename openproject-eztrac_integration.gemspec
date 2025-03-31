require_relative "lib/openproject/eztrac_integration/version"

Gem::Specification.new do |spec|
  spec.name        = "openproject-eztrac_integration"
  spec.version     = Openproject::EztracIntegration::VERSION
  spec.authors     = "Deepak Nagaraj"
  spec.email       = "deepak.nagaraj.ext@bayer.com"
  spec.homepage    = "http://44.201.110.33/projects/eztrac-integration"
  spec.summary     = "TODO: Summary of Openproject::EztracIntegration."
  spec.description = "TODO: Description of Openproject::EztracIntegration."
  spec.license     = "FIXME"

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    Dir["{app,config,db,lib}/**/*", "CHANGELOG.md", "README.md"]
  end

  spec.add_dependency "rails", '~> 7.0'
end
