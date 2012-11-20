# -*- encoding: utf-8 -*-
require File.expand_path('../lib/ticketsnow/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Tabeso Team"]
  gem.email         = ["dev@tabeso.com"]
  gem.description   = "Interface with TicketsNow.com"
  gem.summary       = ""
  gem.homepage      = "https://github.com/tabeso/ticketsnow-ruby"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "ticketsnow-ruby"
  gem.require_paths = ["lib"]
  gem.version       = Ticketsnow::VERSION
  gem.add_dependency 'savon', '1.2.0'
  
  gem.add_development_dependency 'rspec'
  gem.add_development_dependency 'vcr'
  gem.add_development_dependency 'webmock'
end
