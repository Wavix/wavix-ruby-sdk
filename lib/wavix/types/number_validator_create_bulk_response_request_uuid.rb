# frozen_string_literal: true

module Wavix
  module Types
    # Returned when validation runs asynchronously; poll results using `request_uuid`.
    class NumberValidatorCreateBulkResponseRequestUUID < Internal::Types::Model
      field :request_uuid, -> { String }, optional: false, nullable: false
    end
  end
end
