require 'oauth'
require 'oauth/signature/hmac/sha1'
require 'oauth/request_proxy/rack_request'
require 'oauth/server'
require 'oauth/controllers/application_controller_methods'
require 'oauth/request_proxy/rack_request'

module OAuth
  module Plugin
    class OAuthRailtie < Rails::Railtie
      initializer "oauth-plugin.configure_rails_initialization" do |app|
        ActiveSupport.on_load(:action_controller_base) do
          send :include, OAuth::Controllers::ApplicationControllerMethods
        end
      end
    end
  end
end
