source "http://rubygems.org"

# Specify your gem's dependencies in oauth-plugin.gemspec
gemspec

gem 'addressable', '~> 2.8.0'
gem 'rake', '~> 13.0'
gem 'rspec', '~> 3.10'

require 'rbconfig'

platforms :ruby do
  if RbConfig::CONFIG['target_os'] =~ /darwin/i
    gem 'rb-fsevent'
    gem 'growl'
  end
  if RbConfig::CONFIG['target_os'] =~ /linux/i
    gem 'rb-inotify', '>= 0.5.1'
    gem 'libnotify',  '~> 0.1.3'
  end
end

platforms :jruby do
  if RbConfig::CONFIG['target_os'] =~ /darwin/i
    gem 'growl'
  end
  if RbConfig::CONFIG['target_os'] =~ /linux/i
    gem 'rb-inotify', '>= 0.5.1'
    gem 'libnotify',  '~> 0.1.3'
  end
end
