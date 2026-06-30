# frozen_string_literal: true

module Wavix
  module Types
    module SenderIDResponseType
      extend Wavix::Internal::Types::Enum

      ALPHANUMERIC = "alphanumeric"
      NUMERIC = "numeric"
      SHORTCODE = "shortcode"
    end
  end
end
