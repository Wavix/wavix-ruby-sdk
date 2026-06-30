# frozen_string_literal: true

module Wavix
  module SmsAndMms
    module OptOuts
      module Types
        class CreateOptOutsResponse < Internal::Types::Model
          field :success, -> { Internal::Types::Boolean }, optional: false, nullable: false
        end
      end
    end
  end
end
