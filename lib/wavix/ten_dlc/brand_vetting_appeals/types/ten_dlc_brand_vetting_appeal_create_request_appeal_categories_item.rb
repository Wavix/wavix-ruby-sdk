# frozen_string_literal: true

module Wavix
  module TenDlc
    module BrandVettingAppeals
      module Types
        module TenDlcBrandVettingAppealCreateRequestAppealCategoriesItem
          extend Wavix::Internal::Types::Enum

          VERIFY_TAX_ID = "VERIFY_TAX_ID"
          VERIFY_NON_PROFIT = "VERIFY_NON_PROFIT"
          VERIFY_GOVERNMENT = "VERIFY_GOVERNMENT"
          LOW_SCORE = "LOW_SCORE"
        end
      end
    end
  end
end
