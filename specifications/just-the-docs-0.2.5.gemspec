# -*- encoding: utf-8 -*-
# stub: just-the-docs 0.2.5 ruby lib

Gem::Specification.new do |s|
  s.name = "just-the-docs".freeze
  s.version = "0.2.5"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Patrick Marsceill".freeze]
  s.date = "2019-05-13"
  s.email = ["patrick.marsceill@gmail.com".freeze]
  s.executables = ["just-the-docs".freeze]
  s.files = ["bin/just-the-docs".freeze]
  s.homepage = "https://github.com/pmarsceill/just-the-docs".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "2.7.6.2".freeze
  s.summary = "A modern, high customizable, responsive Jekyll theme for documention with built-in search.".freeze

  s.installed_by_version = "2.7.6.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<jekyll>.freeze, ["~> 3.8.5"])
      s.add_runtime_dependency(%q<jekyll-seo-tag>.freeze, ["~> 2.0"])
      s.add_runtime_dependency(%q<rake>.freeze, ["~> 12.3.1"])
      s.add_development_dependency(%q<bundler>.freeze, ["~> 2.0.1"])
    else
      s.add_dependency(%q<jekyll>.freeze, ["~> 3.8.5"])
      s.add_dependency(%q<jekyll-seo-tag>.freeze, ["~> 2.0"])
      s.add_dependency(%q<rake>.freeze, ["~> 12.3.1"])
      s.add_dependency(%q<bundler>.freeze, ["~> 2.0.1"])
    end
  else
    s.add_dependency(%q<jekyll>.freeze, ["~> 3.8.5"])
    s.add_dependency(%q<jekyll-seo-tag>.freeze, ["~> 2.0"])
    s.add_dependency(%q<rake>.freeze, ["~> 12.3.1"])
    s.add_dependency(%q<bundler>.freeze, ["~> 2.0.1"])
  end
end
