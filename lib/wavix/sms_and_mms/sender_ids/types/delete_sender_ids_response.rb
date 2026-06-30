# frozen_string_literal: true

module Wavix
  module SmsAndMms
    module SenderIDs
      module Types
        class DeleteSenderIDsResponse < Internal::Types::Model
          field :success, -> { Internal::Types::Boolean }, optional: false, nullable: false
        end
      end
    end
  end
end
