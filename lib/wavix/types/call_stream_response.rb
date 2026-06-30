# frozen_string_literal: true

module Wavix
  module Types
    class CallStreamResponse < Internal::Types::Model
      field :success, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :stream_id, -> { String }, optional: true, nullable: false
    end
  end
end
