lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.add_dependency 'faraday', '~> 0.15'
  spec.add_dependency 'json', '~> 2.1'
  spec.add_dependency 'httparty', '~> 0.17.3'
  spec.add_development_dependency 'bundler', '=> 2.2.10'
  spec.authors = ['Léo Gatellier']
  spec.summary = 'Implémentation Ruby de l\'API Métromobilite (Transports en commun de Grenoble et d\'Isère).'
  spec.description = 'Implémentation Ruby de l\'API Métromobilité (Transports en commun de Grenoble et d\'Isère) initialement développée pour être intégrée dans un job dashing/smashing'
  spec.email = %w(github@leogatellier.fr)
  spec.files = %w(LICENSE README.md metromobilite.gemspec Rakefile) + Dir['lib/**/*.rb']
  spec.homepage = 'https://github.com/lgatellier/ruby-metromobilite/'
  spec.licenses = %w(GPL-3.0)
  spec.name = 'metromobilite'
  spec.require_paths = %w(lib)
  spec.required_ruby_version = '>= 2'
  spec.required_rubygems_version = '>= 1.3.5'
  spec.version = 0.2
end
