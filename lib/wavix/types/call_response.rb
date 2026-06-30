# frozen_string_literal: true

module Wavix
  module Types
    class CallResponse < Internal::Types::Model
      field :call, -> { Wavix::Types::Call }, optional: false, nullable: false

      field :success, -> { Internal::Types::Boolean }, optional: false, nullable: false
    end
  end
end
