# frozen_string_literal: true

module Wavix
  module Types
    module SenderIDType
      extend Wavix::Internal::Types::Enum

      NUMERIC = "numeric"
      ALPHANUMERIC = "alphanumeric"
    end
  end
end
