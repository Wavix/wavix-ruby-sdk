# frozen_string_literal: true

module Wavix
  module CallControl
    module Types
      class DeleteCallControlRequest < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false
      end
    end
  end
end
