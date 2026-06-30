# frozen_string_literal: true

module Wavix
  module Types
    class OptOut < Internal::Types::Model
      field :number, -> { String }, optional: false, nullable: false

      field :sender_id, -> { String }, optional: true, nullable: false
    end
  end
end
