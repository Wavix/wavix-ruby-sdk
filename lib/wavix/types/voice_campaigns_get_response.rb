# frozen_string_literal: true

module Wavix
  module Types
    class VoiceCampaignsGetResponse < Internal::Types::Model
      field :voice_campaign, -> { Wavix::Types::VoiceCampaignsGetResponseVoiceCampaign }, optional: true, nullable: false
    end
  end
end
