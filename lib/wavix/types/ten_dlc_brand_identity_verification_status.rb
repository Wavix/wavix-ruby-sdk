# frozen_string_literal: true

module Wavix
  module Types
    module TenDlcBrandIdentityVerificationStatus
      extend Wavix::Internal::Types::Enum

      REVIEW = "REVIEW"
      VERIFIED = "VERIFIED"
      UNVERIFIED = "UNVERIFIED"
      VETTED_VERIFIED = "VETTED_VERIFIED"
      SUSPENDED = "SUSPENDED"
    end
  end
end
