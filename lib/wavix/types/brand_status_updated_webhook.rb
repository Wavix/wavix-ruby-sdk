# frozen_string_literal: true

module Wavix
  module Types
    class BrandStatusUpdatedWebhook < Internal::Types::Model
      field :brand_id, -> { String }, optional: false, nullable: false

      field :status, -> { Wavix::Types::BrandStatusUpdatedWebhookStatus }, optional: false, nullable: false
    end
  end
end
