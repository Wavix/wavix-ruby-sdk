# frozen_string_literal: true

module Wavix
  module Types
    class NumberValidatorCreateBulkResponse < Internal::Types::Model
      extend Wavix::Internal::Types::Union

      member -> { Wavix::Types::PhoneValidationBatchResponse }

      member -> { Wavix::Types::NumberValidatorCreateBulkResponseRequestUUID }
    end
  end
end
