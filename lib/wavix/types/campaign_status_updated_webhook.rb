# frozen_string_literal: true

module Wavix
  module Types
    class CampaignStatusUpdatedWebhook < Internal::Types::Model
      field :brand_id, -> { String }, optional: false, nullable: false

      field :campaign_id, -> { String }, optional: false, nullable: false

      field :status, -> { Wavix::Types::CampaignStatusUpdatedWebhookStatus }, optional: false, nullable: false
    end
  end
end
