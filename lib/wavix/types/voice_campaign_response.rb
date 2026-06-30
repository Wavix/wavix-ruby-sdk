# frozen_string_literal: true

module Wavix
  module Types
    # Represents a voice campaign that places an outbound call running a pre-approved call flow.
    class VoiceCampaignResponse < Internal::Types::Model
      field :callflow_id, -> { Integer }, optional: false, nullable: false

      field :caller_id, -> { String }, optional: false, nullable: false

      field :contact, -> { String }, optional: false, nullable: false

      field :callback_url, -> { String }, optional: true, nullable: false
    end
  end
end
