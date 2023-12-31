# frozen_string_literal: true

require_relative "lib/regexrx2md/version"

Gem::Specification.new do |spec|
  spec.name = "regexrx2md"
  spec.version = RegExRX2MD::VERSION
  spec.author = "Brett Terpstra"
  spec.email = "me@brettterpstra.com"

  spec.summary = "RegExRX2MD"
  spec.description = "Convert RegExRX file to Markdown"
  spec.homepage = "https://github.com/ttscoff/regexrx2md"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 3.0.0"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage
  spec.metadata["bug_tracker_uri"] = "#{spec.metadata["source_code_uri"]}/issues"
  spec.metadata["changelog_uri"] = "#{spec.metadata["source_code_uri"]}/blob/main/CHANGELOG.md"
  spec.metadata["github_repo"] = "git@github.com:ttscoff/regexrx2md.git"

  spec.require_paths << 'lib'

  spec.extra_rdoc_files = ['README.md']
  spec.rdoc_options << '--title' << 'snibbets' << '--main' << 'README.md' << '--markup' << 'markdown'

  spec.bindir = 'bin'
  spec.executables << 'regexrx2md'

  spec.files = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.strip =~ %r{^((test|spec|features)/|\.git|buildnotes|.*\.taskpaper)} }
  end

  spec.add_runtime_dependency "nokogiri", "~> 1.5"
  spec.add_runtime_dependency "erb", "~> 4.0"

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "awesome_print", "~> 1.9"
  spec.add_development_dependency 'yard', '~> 0.9', '>= 0.9.26'
  spec.add_development_dependency "gem-release", "~> 2.2"
  spec.add_development_dependency "parse_gemspec-cli", "~> 1.0"
  spec.add_development_dependency "rake", "~> 13.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "simplecov", "~> 0.21"
  spec.add_development_dependency "simplecov-console", "~> 0.9"
  spec.add_development_dependency "standard", "~> 1.3"
end
