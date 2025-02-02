# frozen_string_literal: true

require_relative "lib/hwf_hmrc_api/version"

Gem::Specification.new do |spec|
  spec.name          = "hwf_hmrc_api"
  spec.version       = HwfHmrcApi::VERSION
  spec.authors       = ["Petr Zaparka"]
  spec.email         = ["petr@zaparka.cz"]

  spec.summary       = "Link between HwF and HMRC API."
  spec.description   = "Basic logic to communicate and parse data to/from HMRC API."
  spec.homepage      = "https://github.com/hmcts/hwf_hmrc_api"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.4.0")

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/ministryofjustice/glimr-api-client"
  # spec.metadata["changelog_uri"] = "TODO: Put your gem's CHANGELOG.md URL here."

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{\A(?:test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  spec.add_dependency "httparty", "~> 0.18.1"
  spec.add_dependency "rotp", "~> 6.2.0"
  spec.add_dependency "uuid", "~> 2.3.9"

  # For more information and examples about making a new gem, checkout our
  # guide at: https://bundler.io/guides/creating_gem.html
end
