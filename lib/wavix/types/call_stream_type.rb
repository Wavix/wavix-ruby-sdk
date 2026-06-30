# frozen_string_literal: true

module Wavix
  module Types
    module CallStreamType
      extend Wavix::Internal::Types::Enum

      ONEWAY = "oneway"
      TWOWAY = "twoway"
    end
  end
end
