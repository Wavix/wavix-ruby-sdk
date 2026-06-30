# frozen_string_literal: true

module Wavix
  module Types
    # Paginated list of 10DLC Campaigns.
    class TenDlcCampaignListResponse < Internal::Types::Model
      field :items, -> { Internal::Types::Array[Wavix::Types::TenDlcCampaign] }, optional: false, nullable: false

      field :pagination, -> { Wavix::Types::TenDlcCampaignListResponsePagination }, optional: false, nullable: false
    end
  end
end
