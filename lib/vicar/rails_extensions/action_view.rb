module Vicar
  module RailsExtensions
    module ActionView
      # Create presenter from app/presenters and call method
      #
      # name   - Symbol
      # action - Symbol
      # args   - arguments for presenter method
      #
      # Yields the presenter instance
      #
      # Examples
      #
      #   - presenter :company, :awards, @company
      #
      # Returns variant
      def presenter(name, action, *args)
        presenter = "#{name.to_s.camelize}Presenter".constantize.new(self)

        yield(presenter) if block_given?

        presenter.send(action, *args)
      end
    end
  end
end