# frozen_string_literal: true

module Wavix
  module Types
    module NumberStatusUpdatedWebhookStatus
      extend Wavix::Internal::Types::Enum

      APPROVED = "APPROVED"
      PENDING = "PENDING"
      REJECTED = "REJECTED"
    end
  end
end
