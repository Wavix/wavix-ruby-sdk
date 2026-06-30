# frozen_string_literal: true

module Wavix
  module NumberValidator
    module Results
      module Types
        class GetResultsRequest < Internal::Types::Model
          field :request_id, -> { String }, optional: false, nullable: false
        end
      end
    end
  end
end
