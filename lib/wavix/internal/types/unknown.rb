# frozen_string_literal: true

module Wavix
  module Internal
    module Types
      module Unknown
        include Wavix::Internal::Types::Type

        def coerce(value)
          value
        end
      end
    end
  end
end
