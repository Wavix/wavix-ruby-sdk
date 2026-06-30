# frozen_string_literal: true

module Wavix
  module Webrtc
    module Tokens
      module Types
        class DeleteTokensRequest < Internal::Types::Model
          field :id, -> { String }, optional: false, nullable: false
        end
      end
    end
  end
end
