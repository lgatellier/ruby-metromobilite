lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.add_dependency 'httparty', '~> 0.14'
  spec.add_dependency 'json'
  spec.add_development_dependency 'bundler', '~> 1.0'
  spec.authors = ['Léo Gatellier']
  spec.description = 'Implémentation Ruby de l\'API Métromobilite (Transports en commun de Grenoble et d\'Isère).'
  spec.email = %w(github@leogatellier.fr)
  spec.files = %w(LICENSE README.md metromobilite.gemspec) + Dir['lib/**/*.rb']
  spec.homepage = 'https://github.com/lgatellier/ruby-metromobilite/'
  spec.licenses = %w(GPL-3.0)
  spec.name = 'metromobilite'
  spec.require_paths = %w(lib)
  spec.required_ruby_version = '>= 2'
  spec.required_rubygems_version = '>= 1.3.5'
  spec.summary = spec.description
  spec.version = 1.0
end
