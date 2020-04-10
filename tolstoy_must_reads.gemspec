lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "tolstoy_must_reads/version"

Gem::Specification.new do |spec|
  spec.name          = "tolstoy_must_reads"
  spec.version       = TolstoyMustReads::VERSION
  spec.authors       = ["cantstopcoding"]
  spec.email         = ["jonathan_koss@yahoo.com"]

  spec.summary       = %q{Provide a list of must reads by Tolstoy and pick the book you want a summary of.}
  spec.description   = %q{Provide user Tolstoys 10 must read books. The user will be asked to pick the number of the book he would like a summary of, or type "list" to see the books again, or type "exit" to leave. If anything else is typed, "Invalid Input" will be returned. After the summary, the list, or "Invalid Input" is returned, the user will be asked, again, what book summary he/she wants to see or to type list, or to exit.}
  spec.homepage      = "https://github.com/cantstopcoding/tolstoy_must_reads"
  spec.license       = "MIT"

  spec.metadata["allowed_push_host"] = "http://mygemserver.com"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/cantstopcoding/tolstoy_must_reads"
  spec.metadata["changelog_uri"] = "https://github.com/cantstopcoding/tolstoy_must_reads"

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
  spec.add_development_dependency "pry"
  spec.add_dependency "nokogiri"
end
