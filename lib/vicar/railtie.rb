require 'rails/railtie'

module Vicar
  class Railtie < Rails::Railtie
    initializer 'vicar.rails_extensions' do |app|
      ActiveSupport.on_load(:action_view) do
        include Vicar::RailsExtensions::ActionView
      end
    end
  end
end