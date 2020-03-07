require 'active_support/configurable'

module RailsWait
  include ActiveSupport::Configurable

  configure do |config|
    config.admin_controller = 'AdminController'
    config.my_controller = 'MyController'
    config.app_controller = 'ApplicationController'
  end

end
