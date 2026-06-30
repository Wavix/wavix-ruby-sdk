# frozen_string_literal: true

module Wavix
  module TenDlc
    module Campaigns
      module Types
        class DeleteCampaignsResponse < Internal::Types::Model
          field :success, -> { Internal::Types::Boolean }, optional: false, nullable: false
        end
      end
    end
  end
end
