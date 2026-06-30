# frozen_string_literal: true

module Wavix
  module Types
    # Returned when validation runs asynchronously; poll results using `request_id`.
    class NumberValidatorCreateBulkResponseRequestID < Internal::Types::Model
      field :request_id, -> { String }, optional: true, nullable: false
    end
  end
end
