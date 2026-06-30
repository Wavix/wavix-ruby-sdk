# frozen_string_literal: true

module Wavix
  module Types
    class VoiceCampaignsGetResponseVoiceCampaign < Internal::Types::Model
      field :id, -> { Integer }, optional: true, nullable: false

      field :status, -> { String }, optional: true, nullable: false

      field :timestamp, -> { String }, optional: true, nullable: false

      field :caller_id, -> { String }, optional: true, nullable: false

      field :contact, -> { String }, optional: true, nullable: false
    end
  end
end
