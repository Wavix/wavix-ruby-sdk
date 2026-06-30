# frozen_string_literal: true

module Wavix
  module Types
    class VoiceCampaignCreateRequest < Internal::Types::Model
      field :voice_campaign, -> { Wavix::Types::VoiceCampaignResponse }, optional: false, nullable: false
    end
  end
end
