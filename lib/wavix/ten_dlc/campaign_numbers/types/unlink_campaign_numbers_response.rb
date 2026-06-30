# frozen_string_literal: true

module Wavix
  module TenDlc
    module CampaignNumbers
      module Types
        class UnlinkCampaignNumbersResponse < Internal::Types::Model
          field :success, -> { Internal::Types::Boolean }, optional: false, nullable: false
        end
      end
    end
  end
end
