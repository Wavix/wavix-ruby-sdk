# frozen_string_literal: true

module Wavix
  module SmsAndMms
    module Messages
      module Types
        class GetMessagesRequest < Internal::Types::Model
          field :id, -> { String }, optional: false, nullable: false
        end
      end
    end
  end
end
