# frozen_string_literal: true

module Wavix
  module Types
    class VoiceCampaignsCreateResponse < Internal::Types::Model
      field :voice_campaign, -> { Wavix::Types::VoiceCampaignsCreateResponseVoiceCampaign }, optional: true, nullable: false
    end
  end
end
