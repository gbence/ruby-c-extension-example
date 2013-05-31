#!/usr/bin/env rake

# ++ defaults +++++++++++++++++++++++++
task :default => :spec
task :spec    => 'spec:progress'

# -- bundler --------------------------
begin
  require 'bundler/setup'
rescue LoadError
  puts 'You must `gem install bundler` and `bundle install` to run rake tasks'
end

# -- rspec ----------------------------
begin
  require 'rspec/core/rake_task'

  namespace :spec do
    desc 'Run all specs in spec directory (format=progress)'
    RSpec::Core::RakeTask.new(:progress) do |t|
      t.pattern = 'spec/**/*_spec.rb'
      t.rspec_opts = %w{ --color --format=progress }
    end

    desc 'Run all specs in spec directory (format=documentation)'
    RSpec::Core::RakeTask.new(:documentation) do |t|
      t.pattern = 'spec/**/*_spec.rb'
      t.rspec_opts = %w{ --color --format=documentation }
    end
  end
rescue LoadError
  puts 'You must `gem install rspec` and `bundle install` to run spec tasks'
end
