# frozen_string_literal: true

module Wavix
  module Types
    module TransactionStatus
      extend Wavix::Internal::Types::Enum

      CREATED = "Created"
      PENDING = "Pending"
      COMMITTED = "Committed"
      REVERTED = "Reverted"
    end
  end
end
