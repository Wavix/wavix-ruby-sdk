# frozen_string_literal: true

module Wavix
  module Types
    # Nudge configuration. Set the nudge intent to `REVIEW` to request action on a pending approval, or to
    # `APPEAL_REJECTION` to submit an appeal for a rejected campaign.
    class TenDlcCampaignNudgeRequest < Internal::Types::Model
      field :nudge_intent, -> { String }, optional: false, nullable: false

      field :description, -> { String }, optional: false, nullable: false
    end
  end
end
