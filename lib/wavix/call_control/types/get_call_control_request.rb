# frozen_string_literal: true

module Wavix
  module CallControl
    module Types
      class GetCallControlRequest < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false
      end
    end
  end
end
