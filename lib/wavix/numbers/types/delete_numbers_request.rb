# frozen_string_literal: true

module Wavix
  module Numbers
    module Types
      class DeleteNumbersRequest < Internal::Types::Model
        field :ids, -> { Integer }, optional: true, nullable: false

        field :dids, -> { String }, optional: true, nullable: false
      end
    end
  end
end
