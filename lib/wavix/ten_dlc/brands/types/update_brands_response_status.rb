# frozen_string_literal: true

module Wavix
  module TenDlc
    module Brands
      module Types
        module UpdateBrandsResponseStatus
          extend Wavix::Internal::Types::Enum

          REVIEW = "REVIEW"
          VERIFIED = "VERIFIED"
          UNVERIFIED = "UNVERIFIED"
          VETTED_VERIFIED = "VETTED_VERIFIED"
          SUSPENDED = "SUSPENDED"
        end
      end
    end
  end
end
