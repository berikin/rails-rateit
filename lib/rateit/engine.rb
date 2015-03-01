module Rateit
  module Rails
    class Engine < ::Rails::Engine
    end
  end

  class Railtie < ::Rails::Railtie
    initializer "rateit.action_view" do |app|
      ActiveSupport.on_load :action_view do
        require 'view_helpers/action_view'
        include Rateit::ViewHelpers::ActionView
      end
    end
  end
end


