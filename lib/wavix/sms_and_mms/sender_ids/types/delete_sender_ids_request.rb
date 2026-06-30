# frozen_string_literal: true

module Wavix
  module SmsAndMms
    module SenderIDs
      module Types
        class DeleteSenderIDsRequest < Internal::Types::Model
          field :id, -> { String }, optional: false, nullable: false
        end
      end
    end
  end
end
