# frozen_string_literal: true

module Wavix
  module Types
    module CallStreamChannel
      extend Wavix::Internal::Types::Enum

      INBOUND = "inbound"
      OUTBOUND = "outbound"
      BOTH = "both"
    end
  end
end
