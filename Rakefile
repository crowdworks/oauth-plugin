require 'bundler'
Bundler::GemHelper.install_tasks

desc 'Run RSpec'
require 'rspec/core/rake_task'
RSpec::Core::RakeTask.new do |t|
  t.verbose = false
end
task default: :spec
