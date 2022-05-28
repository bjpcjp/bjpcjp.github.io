# -*- encoding: utf-8 -*-
# stub: jekyll_social_icons 0.1.0 ruby lib

Gem::Specification.new do |s|
  s.name = "jekyll_social_icons".freeze
  s.version = "0.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Unai Abrisketa".freeze]
  s.date = "2017-05-18"
  s.email = ["unai.abrisqueta@gmail.com".freeze]
  s.homepage = "https://github.com/unabris/jekyll_social_icons".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "3.3.5".freeze
  s.summary = "Jekyll plugin to render your social networks icons".freeze

  s.installed_by_version = "3.3.5" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_development_dependency(%q<bundler>.freeze, ["~> 1.13"])
    s.add_development_dependency(%q<rake>.freeze, ["~> 10.0"])
  else
    s.add_dependency(%q<bundler>.freeze, ["~> 1.13"])
    s.add_dependency(%q<rake>.freeze, ["~> 10.0"])
  end
end
