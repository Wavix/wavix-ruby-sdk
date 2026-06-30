# frozen_string_literal: true

module Wavix
  module TwoFa
    module Verification
      module Types
        class CheckVerificationResponse < Internal::Types::Model
          field :is_valid, -> { Internal::Types::Boolean }, optional: false, nullable: false
        end
      end
    end
  end
end
