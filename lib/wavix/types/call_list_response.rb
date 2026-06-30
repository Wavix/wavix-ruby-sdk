# frozen_string_literal: true

module Wavix
  module Types
    class CallListResponse < Internal::Types::Model
      field :calls, -> { Internal::Types::Array[Wavix::Types::Call] }, optional: false, nullable: false

      field :success, -> { Internal::Types::Boolean }, optional: false, nullable: false
    end
  end
end
