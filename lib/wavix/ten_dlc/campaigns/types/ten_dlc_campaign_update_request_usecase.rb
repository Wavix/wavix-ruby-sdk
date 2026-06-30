# frozen_string_literal: true

module Wavix
  module TenDlc
    module Campaigns
      module Types
        module TenDlcCampaignUpdateRequestUsecase
          extend Wavix::Internal::Types::Enum

          CUSTOMER_CARE = "CUSTOMER_CARE"
          MARKETING = "MARKETING"
          ACCOUNT_NOTIFICATION = "ACCOUNT_NOTIFICATION"
          FRAUD_ALERT = "FRAUD_ALERT"
          PUBLIC_SERVICE_ANNOUNCEMENT = "PUBLIC_SERVICE_ANNOUNCEMENT"
          SECURITY_ALERT = "SECURITY_ALERT"
        end
      end
    end
  end
end
