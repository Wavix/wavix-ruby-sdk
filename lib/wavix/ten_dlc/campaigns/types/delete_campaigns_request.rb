# frozen_string_literal: true

module Wavix
  module TenDlc
    module Campaigns
      module Types
        class DeleteCampaignsRequest < Internal::Types::Model
          field :brand_id, -> { String }, optional: false, nullable: false

          field :campaign_id, -> { String }, optional: false, nullable: false
        end
      end
    end
  end
end
