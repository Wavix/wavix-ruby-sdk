# frozen_string_literal: true

module Wavix
  module VoiceCampaigns
    module Types
      class GetVoiceCampaignsRequest < Internal::Types::Model
        field :id, -> { Integer }, optional: false, nullable: false
      end
    end
  end
end
