# frozen_string_literal: true

module Wavix
  module Types
    # Brand Identity Verification appeal feedback, if any
    class TenDlcBrandAppealOutcomeFeedback < Internal::Types::Model
      field :category, -> { Internal::Types::Array[Wavix::Types::TcrFeedbackCategory] }, optional: false, nullable: false
    end
  end
end
