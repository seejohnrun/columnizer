require 'rspec/core/rake_task'
require File.dirname(__FILE__) + '/lib/columnizer/version'

task :build => :test do
  system "gem build columnizer.gemspec"
end

task :release => :build do
  # tag and push
  system "git tag v#{Columnizer.version}"
  system "git push origin --tags"
  # push the gem
  system "gem push columnizer-#{Columnizer.version}.gem"
end

RSpec::Core::RakeTask.new(:test) do |t|
  t.pattern = 'spec/**/*_spec.rb'
  fail_on_error = true # be explicit
end
