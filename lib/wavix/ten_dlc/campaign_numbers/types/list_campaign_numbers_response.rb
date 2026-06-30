# frozen_string_literal: true

module Wavix
  module TenDlc
    module CampaignNumbers
      module Types
        class ListCampaignNumbersResponse < Internal::Types::Model
          field :brand_id, -> { String }, optional: false, nullable: false

          field :campaign_id, -> { String }, optional: false, nullable: false

          field :numbers, -> { Internal::Types::Array[Wavix::Types::TenDlcCampaignNumber] }, optional: false, nullable: false
        end
      end
    end
  end
end
