# coding: utf-8

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rene_majewski/ruby_checks/version'

Gem::Specification.new do |spec|
  spec.platform = Gem::Platform::RUBY
  spec.name = 'rm-ruby-checks'
  spec.version = ReneMajewski::RubyChecks::VERSION
  spec.authors = ['René Majewski']
  spec.email = ['rene.majewski@gmx.de']
  spec.licenses = 'EUPL-1.1'

  spec.summary = 'Test Arguments in Methods.'
  spec.description = 'Tests arguments in methods for correctness. In addition, some assertions for Minitest are provided.'
  spec.homepage = 'https://github.com/RMajewski/ruby-checks'

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the
  # 'allowed_push_host' to allow pushing to a single host or delete this section
  # to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = ''
    spec.metadata['yard_run'] = 'yri'
  else
    raise RuntimeError, 'RubyGems 2.0 or newer is required to protect ' \
      'against public gem pushes.'
  end

  spec.files = `git ls-files`.split($/)
  spec.test_files = spec.files.grep(%r{^(test|spec|features)/})
  spec.executables = spec.files.grep(%r{^bin/}) { |file| File.basename(file) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.12'
  spec.add_development_dependency 'haml-lint', '~> 0.999.999'
  spec.add_development_dependency 'minitest', '~> 5.0'
  spec.add_development_dependency 'minitest-autotest', '~> 1.0', '>= 1.0.3'
  spec.add_development_dependency 'minitest-reporters', '~> 1.1', '>= 1.1.18'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rubocop', '~> 0.51.0'
  spec.add_development_dependency 'rubycritic', '~> 3.3'
  spec.add_development_dependency 'simplecov', '~>0.15.1'
  spec.add_development_dependency 'yard', '~> 0.9', '>= 0.9.9'
end
