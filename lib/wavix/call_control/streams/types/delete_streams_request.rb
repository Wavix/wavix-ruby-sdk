# frozen_string_literal: true

module Wavix
  module CallControl
    module Streams
      module Types
        class DeleteStreamsRequest < Internal::Types::Model
          field :call_id, -> { String }, optional: false, nullable: false

          field :id, -> { String }, optional: false, nullable: false
        end
      end
    end
  end
end
