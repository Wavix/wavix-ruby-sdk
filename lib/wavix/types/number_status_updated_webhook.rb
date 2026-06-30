# frozen_string_literal: true

module Wavix
  module Types
    class NumberStatusUpdatedWebhook < Internal::Types::Model
      field :brand_id, -> { String }, optional: false, nullable: false

      field :campaign_id, -> { String }, optional: false, nullable: false

      field :number, -> { String }, optional: false, nullable: false

      field :status, -> { Wavix::Types::NumberStatusUpdatedWebhookStatus }, optional: false, nullable: false
    end
  end
end
