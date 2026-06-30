# frozen_string_literal: true

module Wavix
  module Cdrs
    module Types
      module CdrSearchRequestType
        extend Wavix::Internal::Types::Enum

        PLACED = "placed"
        RECEIVED = "received"
      end
    end
  end
end
