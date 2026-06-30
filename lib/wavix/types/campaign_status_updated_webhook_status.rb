# frozen_string_literal: true

module Wavix
  module Types
    module CampaignStatusUpdatedWebhookStatus
      extend Wavix::Internal::Types::Enum

      REVIEW = "REVIEW"
      APPROVED = "APPROVED"
      DECLINED = "DECLINED"
      DELETED = "DELETED"
      EXPIRED = "EXPIRED"
      SUSPENDED = "SUSPENDED"
      PORTED_OUT = "PORTED_OUT"
    end
  end
end
