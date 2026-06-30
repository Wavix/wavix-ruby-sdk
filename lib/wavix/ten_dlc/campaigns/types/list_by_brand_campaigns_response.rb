# frozen_string_literal: true

module Wavix
  module TenDlc
    module Campaigns
      module Types
        # Paginated list of 10DLC Campaigns.
        class ListByBrandCampaignsResponse < Internal::Types::Model
          field :items, -> { Internal::Types::Array[Wavix::Types::TenDlcCampaign] }, optional: false, nullable: false

          field :pagination, -> { Wavix::TenDlc::Campaigns::Types::ListByBrandCampaignsResponsePagination }, optional: false, nullable: false
        end
      end
    end
  end
end
