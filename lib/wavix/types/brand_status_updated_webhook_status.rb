# frozen_string_literal: true

module Wavix
  module Types
    module BrandStatusUpdatedWebhookStatus
      extend Wavix::Internal::Types::Enum

      SELF_DECLARED = "SELF_DECLARED"
      UNVERIFIED = "UNVERIFIED"
      VERIFIED = "VERIFIED"
      VETTED_VERIFIED = "VETTED_VERIFIED"
      REVIEW = "REVIEW"
      SUSPENDED = "SUSPENDED"
    end
  end
end
