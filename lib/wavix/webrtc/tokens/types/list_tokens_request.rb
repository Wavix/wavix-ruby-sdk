# frozen_string_literal: true

module Wavix
  module Webrtc
    module Tokens
      module Types
        class ListTokensRequest < Internal::Types::Model
          field :page, -> { Integer }, optional: true, nullable: false

          field :per_page, -> { Integer }, optional: true, nullable: false
        end
      end
    end
  end
end
