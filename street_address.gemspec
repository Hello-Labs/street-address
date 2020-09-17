$LOAD_PATH.unshift 'lib'

require 'street_address'

Gem::Specification.new do |s|
  s.name = "street-address"
  s.licenses = ['MIT']
  s.version = StreetAddress::US::VERSION
  s.date = Time.now.strftime('%Y-%m-%d')
  s.summary = "Parse Addresses into substituent parts. This gem includes US only."
  s.authors = ["Derrek Long"]
  s.require_paths = ["lib"]
  s.email = "derreklong@gmail.com"
  s.files = `git ls-files`.split("\n")
  s.test_files = `git ls-files -- test/*`.split("\n")
  s.homepage = "https://github.com/street-address-rb/street-address"
  s.description = <<desc
StreetAddress::US allows you to send any string to parse and if the string is a US address returns an object of the address broken into it's substituent parts.

A port of Geo::StreetAddress::US by Schuyler D. Erle and Tim Bunce.
desc

  s.metadata["allowed_push_host"] = "https://rubygems.pkg.github.com/Hello-Labs/"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  s.files = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end

  s.add_development_dependency "bundler"
  s.add_development_dependency "rake"
  s.add_development_dependency "minitest"
end
