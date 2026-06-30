# frozen_string_literal: true

module Wavix
  module Types
    module PhoneNumberValidationType
      extend Wavix::Internal::Types::Enum

      FORMAT = "format"
      ANALYSIS = "analysis"
      VALIDATION = "validation"
    end
  end
end
