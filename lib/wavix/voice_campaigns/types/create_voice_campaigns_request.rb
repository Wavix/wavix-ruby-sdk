# frozen_string_literal: true

module Wavix
  module VoiceCampaigns
    module Types
      class CreateVoiceCampaignsRequest < Internal::Types::Model
        field :voice_campaign, -> { Wavix::Types::VoiceCampaignResponse }, optional: false, nullable: false
      end
    end
  end
end
