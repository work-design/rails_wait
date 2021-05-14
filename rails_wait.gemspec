$:.push File.expand_path('lib', __dir__)
require 'rails_wait/version'

Gem::Specification.new do |spec|
  spec.name = 'rails_wait'
  spec.version = RailsWait::VERSION
  spec.authors = ['qinmingyuan']
  spec.email = ['mingyuan0715@foxmail.com']
  spec.homepage = 'https://github.com/work-design/rails_wait'
  spec.summary = 'Summary of RailsWait.'
  spec.description = 'Description of RailsWait.'
  spec.license = 'MIT'

  spec.files = Dir[
    '{app,config,db,lib}/**/*',
    'LICENSE',
    'Rakefile',
    'README.md'
  ]

  spec.add_dependency 'rails_com', '~> 1.2'
end
