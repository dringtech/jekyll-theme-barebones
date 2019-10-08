# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = "jekyll-theme-barebones"
  spec.version       = "0.1.0"
  spec.authors       = ["Giles Dring"]
  spec.email         = ["giles@dringtech.com"]

  spec.summary       = "A really bare jekyll theme"
  spec.homepage      = "https://github.com/dringtech/jekyll-theme-barebones"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").select { |f| f.match(%r!^(assets|_layouts|_includes|_sass|LICENSE|README)!i) }

  spec.add_runtime_dependency "jekyll", "~> 3.8"
  spec.add_runtime_dependency "jekyll-seo-tag", "~> 2.5.0"

  spec.add_development_dependency "bundler", "~> 2.0.2"
  # spec.add_development_dependency "rake", "~> 12.0"
end
